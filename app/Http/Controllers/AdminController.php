<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\ProductController;
use Image;
use Illuminate\Support\Facades\Input;
use App\ProductBrand;
use App\ProductReference;
use App\Attribute;
use App\Product;
use App\ProductAttribute;
use App\ProductSupplier;
use App\ProductAttributeValue;
use App\ProductLot;
use App\ProductImage;
use App\RecentlyViewed;
use App\Category;
use App\CategoryProduct;
use App\Type;
use App\ProductType;
use App\AppConfig;
use App\ProductAction;
use App\Invoice;
use App\User;
use App\Log;
use App\ProductSerial;
use App\ProductSerialWarehouse;
use App\Warehouse;
use App\WarehouseProduct;
use App\WarehouseProductSerialWarehouse;
use Auth;
use App;
use Artisan;
use File;
use Carbon\Carbon;

class AdminController extends Controller {
  public function setTypes() {
    $products = Product::all();
    foreach($products as $product) {
      $product->id_type = $product->type->id_type;
      $product->save();
    }
    echo 'done';
  }
  public function cleanString($text) {
    $utf8 = array(
        '/[áàâãªä]/u'   =>   'a',
        '/[ÁÀÂÃÄ]/u'    =>   'A',
        '/[ÍÌÎÏ]/u'     =>   'I',
        '/[íìîï]/u'     =>   'i',
        '/[éèêë]/u'     =>   'e',
        '/[ÉÈÊË]/u'     =>   'E',
        '/[óòôõºö]/u'   =>   'o',
        '/[ÓÒÔÕÖ]/u'    =>   'O',
        '/[úùûü]/u'     =>   'u',
        '/[ÚÙÛÜ]/u'     =>   'U',
        '/ç/'           =>   'c',
        '/Ç/'           =>   'C',
        '/ñ/'           =>   'n',
        '/Ñ/'           =>   'N',
        '/–/'           =>   '-', // UTF-8 hyphen to "normal" hyphen
        '/[’‘‹›‚]/u'    =>   ' ', // Literally a single quote
        '/[“”«»„]/u'    =>   ' ', // Double quote
        '/ /'           =>   ' ', // nonbreaking space (equiv. to 0x160)
    );
    return preg_replace(array_keys($utf8), array_values($utf8), $text);
  }
	public function index() {
		$menu = ['admin', ''];
    $months = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 
                'Junio', 'Julio', 'Agosto', 'Septiembre', 
                'Octubre', 'Noviembre', 'Diciembre'];
    $dashVars = new \stdClass();
    $start_date = new Carbon('first day of this month');
    $dashVars->current_month = $months[$start_date->month-1];
    $start_date = explode(' ', $start_date)[0].' 00:00:00';
    $end_date = new Carbon('now');
    $invoices = Invoice::where('created_at', '>=', $start_date)->where('created_at', '<=', $end_date)->get();
    $total_sales = 0;
    $total_profits = 0;
    $total_stocks = 0;
    $total_sold_products = 0;
    foreach ($invoices as $invoice) {
      foreach($invoice->products as $product) {
        $total_sold_products += $product->quantity;
      }
      $total_sales += $invoice->amount;
      $total_profits += $invoice->profit;
    }
    $lots = ProductLot::all();
    foreach($lots as $lot) {
      $total_stocks += $lot->quantity;
    }
    $dashVars->current_month_sales = $total_sales;
    $dashVars->current_month_profits = $total_profits;
    $dashVars->current_mount_sold_products = $total_sold_products;
    $dashVars->total_products = Product::all()->count();
    $dashVars->users_registred = User::all()->count();
    $dashVars->total_stocks = $total_stocks;
    //return $sales;
    //$lastday = date('t',strtotime('today'));
    
		return view('admin.index')->with(['menu' => $menu, 'dashVars' => $dashVars]);
	}
	public function categories(Request $req) {
		if (!$req->id_parent) 
			$req->id_parent = 0;
		$categories = Category::where('id_parent', $req->id_parent)->orderBy('pos')->get();
    $categories->status = 'OK';
		return $categories;
	}
	public function addCategory(Request $req) {
		try {
			$category = Category::create([
										'name' => $req->name,
										'slug' => $req->slug,
										'pos' => ($req->pos) ? $req->pos : 1,
										'id_parent' => ($req->id_parent) ? $req->id_parent : 0,
										'image' => $req->image,
									]);
			return response()->json(['response' => $category]);
		} catch(\Illuminate\Database\QueryException $e) {
			return response()->json(['response' => 'exists']);
		}
	}
	public function productView($id = null) {
		$menu = ['product', 'new'];
		$brands = (new ProductController)->allBrand();
		//$references 
		$suppliers = ProductSupplier::with('user')->get();
		$attributes = (new ProductController)->allAttribute();
		//$categories = Category::where('id_parent', 0)->orderBy('pos')->get();
		$categories = Category::orderBy('pos')->get();
    //$warehouses = Warehouse::all();
		//$subcategories = Category::orderBy('pos')->get();
		$types = Type::all();
    if ($id) {
      $product = Product::find($id);
    }
    if (!$id || !$product)
  		return view('admin.product.new')->with([
  			'menu' => $menu, 
  			'brands' => $brands, 
  			'suppliers' => $suppliers, 
  			'attributes' => $attributes,
  			'categories' => $categories,
  			'types' => $types
  		]);
    else {
      return view('admin.product.new')->with([
        'menu' => $menu, 
        'brands' => $brands, 
        'suppliers' => $suppliers, 
        'attributes' => $attributes,
        'categories' => $categories,
        'types' => $types,
        'product' => $product
      ]);
    }
	}
	public function brands() {
		$brands = ProductBrand::orderBy('name')->get();
		return response()->json(['response' => $brands]);
	}
	
	
	
  
  
  
  
  /*public function getCategoryOfProduct(Request $req) {
    if (!$req->id)
      return response()->json(['status' => 'NEED_MORE_PARAMETERS']);
    $subcategories = CategoryProduct::where('id_product', $req->id)->get();
    if (!$subcategories)
      return response()->json(['status' => 'NOT_FOUND']);
    $categories = [];
    foreach($subcategories as $subcategory) {
      $category = Category::find($subcategory->parent->id_parent);
      $category_item = array(
                        'id' => $subcategory->id,
                        'category_id' => $category->id,
                        'subcategory_id' => $subcategory->parent->id,
                        'category_name' => $category->name,
                        'category_slug' => $category->slug,
                        'subcategory_name' => $subcategory->parent->name,
                        'subcategory_slug' => $subcategory->parent->slug 
                      );
      array_push($categories, $category_item);
    }
    return $categories;
  }*/
  public function editProduct($req) {
    $product = Product::find($req->id_product);
    if ($req->code) {
      $product_check = Product::where('code', $req->code)->where('id', '!=', $req->id_product)->first();
      if ($product_check)
        return response()->json(['status' => 'CODE_EXISTS']);
      else 
        $product->code = $req->code;
    }
    $product->id_brand = $req->id_brand;
    $product->id_reference = $req->id_reference;
    $product->name = $req->name;
    $product->Lot->id_supplier = $req->id_supplier;
    $product->Lot->purchase_price = preg_replace("/[^0-9]/", "",$req->purchase_price);
    $product->Lot->sale_price = preg_replace("/[^0-9]/", "",$req->sale_price);
    $product->Lot->quantity = $req->quantity;
    $product->short_description = $req->short_description;
    $product->full_description = $req->full_description;
    $product->active = ($req->product_actived == 'on') ? 1 : 0;
    $product->id_type = $req->id_type;
    $product->type->id_type = $req->id_type;//////este proceso debe ser elimitado si no afecta a otros, junto con la tabla.
    $product->save();
    $product->Lot->save();
    $product->type->save();

    $product_attributes = ProductAttribute::where('id_product', $product->id)->delete();
    $attr_list = json_decode($req->attr_list);
    $tags = $product->name.' '.$product->Brand->name.' '.$product->Reference->name;
    foreach($attr_list as $attr) {
      $tags = $tags.' '.$attr->text.' '.$attr->value;
      ProductAttribute::create([
        'id_attribute' => $attr->id,
        'id_product' => $product->id, 
        'value' => $attr->value
      ]);
    }
    $tags = strtolower($tags);
    $tags = implode(' ',array_unique(explode(' ', $tags)));
    $product->tags = $tags;
    $product->save();

    $product_category = CategoryProduct::where('id_product', $product->id)->delete();
    $product_category_list = json_decode($req->product_category_list);
    foreach($product_category_list as $category) {
      CategoryProduct::create([
        'id_product' => $product->id,
        'id_category' => $category->id_subcategory
      ]);
    }
    $id_user = Auth::user()->id;
    $product_action = ProductAction::create([
                        'id_product' => $product->id,
                        'id_user' => $id_user,
                        'action' => 'edit' 
                      ]);
    $log = Log::create([
            'id_user' => $id_user,
            'log' => 'Producto Editado: '.' ID: '.$product->id.' | EAN/UPC: '.
            $product->code.' | Nombre: '.$product->name.
            ' | Marca: '.$product->Brand->name.' | Referencia: '.
            $product->Reference->name.' | Precio de Compra: '.$product->Lot->purchase_price.'  | Precio de Venta: '.
            $product->Lot->sale_price.' | Cantidad: '.$product->Lot->quantity
          ]);
    ///guardar las imagenes
    $destinationPath = 'images/products/246x186/';
    $originalPath = 'images/products/433x325/';
    $largePath = 'images/products/1299x975/';
    $thumbnailPath = 'images/products/194x143/';
    $thumbnailPath_ = 'images/products/73x73/';
    $thumbnailPath__ = 'images/products/67x60/';
    $product_images = ProductImage::where('id_product', $product->id)->get();
    for ($i = 1; $i <= 5; $i++)
    {
      if ($req->hasFile('image'.$i)) {
        $imageName = $product->id.'-img'.$i.'-'.$product->slug.'.'.Input::file('image'.$i)->getClientOriginalExtension();
        if (isset($product_images[$i-1])) {
          File::delete($destinationPath.$product_images[$i-1]->name);
          File::delete($originalPath.$product_images[$i-1]->name);
          File::delete($largePath.$product_images[$i-1]->name);
          File::delete($thumbnailPath.$product_images[$i-1]->name);
          File::delete($thumbnailPath_.$product_images[$i-1]->name);
          File::delete($thumbnailPath__.$product_images[$i-1]->name);
          $product_images[$i-1]->delete();
        }
        ProductImage::create([
          'id_product' => $product->id,
          'name' => $imageName,
          'pos' => $i
        ]);
        Image::make(Input::file('image'.$i))->resize(1299, 975, function($c) {
          $c->aspectRatio(); $c->upsize();
        })->save($largePath.$imageName);
        Image::make(Input::file('image'.$i))->resize(433, 325, function($c) {
          $c->aspectRatio(); $c->upsize();
        })->save($originalPath.$imageName);
        Image::make(Input::file('image'.$i))->resize(246, 186, function($c) {
          $c->aspectRatio(); $c->upsize();
        })->save($destinationPath.$imageName);
        Image::make(Input::file('image'.$i))->resize(194, 143, function($c) {
          $c->aspectRatio(); $c->upsize();
        })->save($thumbnailPath.$imageName);
        Image::make(Input::file('image'.$i))->resize(73, 73, function($c) {
          $c->aspectRatio(); $c->upsize();
        })->save($thumbnailPath_.$imageName);
        Image::make(Input::file('image'.$i))->resize(67, 60, function($c) {
          $c->aspectRatio(); $c->upsize();
        })->save($thumbnailPath__.$imageName);
      }
    }
    return response()->json(['status' => 'SUCCESS']);
  }
  public function productTurn(Request $req) {
    if (!$req->id)
      return response()->json(['status' => 'NEED_MORE_PARAMETERS']);
    $product = Product::find($req->id);
    if (!$product)
      return response()->json(['status' => 'NOT_FOUND']);
    $product->active = ($product->active) ? 0 : 1;
    $product->save();
    $id_user = Auth::user()->id;
    $product_action = ProductAction::create([
                        'id_product' => $product->id,
                        'id_user' => $id_user,
                        'action' =>  ($product->active) ? 'active' : 'inactive'
                      ]);
    $status = ($product->active) ? 'Activado' : 'Desactivado';
    $log = Log::create([
            'id_user' => $id_user,
            'log' => 'Producto '.$status.': '.' ID: '.$product->id.' | EAN/UPC: '.
            $product->code.' | Nombre: '.$product->name.
            ' | Marca: '.$product->Brand->name.' | Referencia: '.
            $product->Reference->name.' | Precio de Compra: '.$product->Lot->purchase_price.'  | Precio de Venta: '.
            $product->Lot->sale_price.' | Cantidad: '.$product->Lot->quantity
          ]);
    return redirect('admin/product/list');
  }
  /*public function test() {
    $destinationPath = 'images/products/246x186/';
    $originalPath = 'images/products/433x325/';
    $largePath = 'images/products/1299x975/';
    $thumbnailPath = 'images/products/194x143/';
    $thumbnailPath_ = 'images/products/73x73/';
    $thumbnailPath__ = 'images/products/67x60/';
    $product_images = ProductImage::where('id_product', 199)->get();
    $i = 1;
    if (isset($product_images[$i])) {
          File::delete($destinationPath.$product_images[$i]->name);
          File::delete($originalPath.$product_images[$i]->name);
          File::delete($largePath.$product_images[$i]->name);
          File::delete($thumbnailPath.$product_images[$i]->name);
          File::delete($thumbnailPath_.$product_images[$i]->name);
          File::delete($thumbnailPath__.$product_images[$i]->name);
          $product_images[$i]->delete();
        }
    return 'done?';
    if (isset($product_images[5]))
      return $product_images[5]->name;
    else 
      return 'no';
  }*/
  /*public function rectificar() {
    $products = Product::all();
    foreach($products as $product) {
      $product_to_warehouse = WarehouseProduct::create([
                                'id_warehouse' => 1,
                                'id_product' => $product->id,
                                'id_lot' => $product->id_lot,
                                'quantity' => $product->Lot->quantity
                              ]);
    }
    return response()->json(['status' => 'done']);
  }*/
  
	public function suppliers() {
		$suppliers = ProductSupplier::orderBy('org_name')->get();
		return response()->json(['response' => $suppliers]); 
	}
	public function discountView() {
		$menu = ['product', 'discount'];
		return view('admin.product.discount')->with(['menu' => $menu]);
	}
	public function maintenance() {
		if (App::isDownForMaintenance())
			Artisan::call("up");
		else
			Artisan::call("down");

		return redirect("/admin");
	}
	public function newSupplier() {
		$menu = ['supplier', 'new'];
		return view("admin.supplier.new")->with(["menu" => $menu]);
	}
	public function modSupplier() {
		$menu = ['supplier', 'mod'];
		return view("admin.supplier.mod")->with(["menu" => $menu]);
	}
	public function importView() {
		$menu = ['product', 'import'];
		return view('admin.product.import')->with(['menu' => $menu]);
	}
  public function productListView() {
    $menu = ['product', 'list'];
    return view('admin.product.list')->with(['menu' => $menu]);
  }
  public function ProductSerialView() {
    $menu = ['product', 'serial'];
    $warehouses = Warehouse::all();
    $serialsinwarehouses = ProductSerialWarehouse::all();
    $serials = ProductSerial::all();
    return view('admin.product.serial')->with(['menu' => $menu, 'warehouses' => $warehouses, 'serials' => $serials, 
      'serialsinwarehouses' => $serialsinwarehouses]);
  }
  public function serialCheck(Request $req) {
    if (!$req->serial)
      return response()->json(['status' => 'NEED_MORE_PARAMETERS']);
    $serial = ProductSerialWarehouse::where('serial', $req->serial)->first();
    if ($serial)
      return response()->json(['status' => 'EXISTS']);
    return response()->json(['status' => 'OK']);
  }
  public function getSerial(Request $req) {
    if (!$req->serial)
      return response()->json(['status' => 'NEED_MORE_PARAMETERS']);
    $product = ProductSerialWarehouse::with(['product', 'warehouse'])->where('serial', $req->serial)->first();
    if (!$product)
      return response()->json(['status' => 'NOT_FOUND']);
    $product->status = 'OK';
    $brand = $product->product->Brand->name;
    $reference = $product->product->Reference->name;
    $product->brand = $brand;
    $product->reference = $reference;
    $supplier = $product->product->Lot->supplier->user;
    $supplier->org_name = $product->product->Lot->supplier->org_name;
    $product->supplier = $supplier;
    //$serial->supplier_org
    return $product;
  }
  public function saveSerialList(Request $req) {
    if (!$req->code || !$req->serials)
      return response()->json(['status' => 'NEED_MORE_PARAMETERS']);
    $product = Product::where('code', $req->code)->first();
    if (!$product)
      return response()->json(['status' => 'NOT_FOUND']);
    if (sizeof($req->serials) == 0)
      return response()->json(['status' => 'EMPTY']);
    $serials = ProductSerialWarehouse::whereIn('serial', $req->serials)->get();
    if (!$serials->isEmpty())
      return response()->json(['status' => 'EXISTS']);
    //$querys = [];
    $id_product = $product->id;
    if ($req->id_warehouse == 0) {
      foreach($req->serials as $serial) {
        $product_serial = ProductSerial::create([
                            'id_product' => $id_product,
                            'serial' => $serial,
                          ]);
      }
    }
    else {
      $warehouse_product = WarehouseProduct::where('id_warehouse', $req->id_warehouse)->where('id_product', $id_product)
                                          ->where('id_lot', $req->id_lot)->first();
      if ($warehouse_product) {
        $warehouse_product->quantity = $warehouse_product->quantity+sizeof($req->serials);
        $warehouse_product->save();
      }
      else {
        $warehouse_product = WarehouseProduct::create([
                            'id_warehouse' => $req->id_warehouse,
                            'id_product' => $id_product,
                            'id_lot' => $req->id_lot,
                            'quantity' => sizeof($req->serials)
                          ]);
      }
      $product->Lot->quantity = $product->Lot->quantity-sizeof($req->serials);
      $product->Lot->save();
      //$warehouse_product_id = $warehouse_product->id;
      foreach($req->serials as $serial) {
        //$query = array('id_product' => $id_product, 'id_lot' => $req->id_lot, 'serial' => $serial);
        //array_push($querys, $query);
        $product_serial = ProductSerialWarehouse::create([
                            'id_product' => $id_product,
                            'id_lot' => $req->id_lot,
                            'serial' => $serial,
                            'id_warehouse' => $req->id_warehouse
                          ]);
        /*$warehouse_product_serial = WarehouseProductSerialWarehouse::create([
                                      'id_warehouse_product' => $warehouse_product_id,
                                      'id_serial' => $product_serial->id
                                    ]);*/
      }
    }
    
    //ProductSerialWarehouse::insert($querys);

    return response()->json(['status' => 'OK']);
  }
  public function productTransferView() {
    $menu = ['product', 'transfer'];
    return view('admin.product.transfer')->with(['menu' => $menu]);
  }
}
