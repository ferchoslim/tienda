<?php

namespace App\Http\Controllers\Admin;

//use Illuminate\Support\Facades\Input;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Product;
use App\Brand;
use App\Supplier;
use App\Reference;
use App\Attribute;
use App\Category;
use App\Type;
use App\Warehouse;
/*use App\ProductAttribute;
use App\ProductAttributeValue;*/
/*

use App\Attribute;



use App\ProductLot;
use App\ProductImage;
use App\RecentlyViewed;
use App\Category;
use App\CategoryProduct;
use App\ProductAction;
use App\ProductRating;
use App\ProductType;
use App\ProductDiscount;

use App\Log;
use App\AppConfig;
use Auth;
use Excel;
use Image;*/

class ProductController extends Controller
{
  public function productView($id = null) {
    $menu = ['product', 'new'];
    $brands = Brand::with('references')->orderBy('name')->get();
    $suppliers = Supplier::with('user')->orderBy('org_name')->get();
    $attributes = Attribute::orderBy('name')->get();
    $categories = Category::orderBy('pos')->orderBy('name')->get();
    $types = Type::orderBy('name')->get();
    $warehouses = Warehouse::orderBy('name')->get();
    $products = Product::with(['lot', 'images', 'brand', 'reference', 'categories',
      'attributes', 'serials'])->get();
    return view('admin.product.new')->with([
      'menu' => $menu, 
      'brands' => $brands, 
      'suppliers' => $suppliers, 
      'attributes' => $attributes,
      'categories' => $categories,
      'types' => $types,
      'warehouses' => $warehouses,
      'products' => $products
    ]);
  }
  public function create(Request $req) {
    echo 'ok';
  }
  /*
  public function createProducte(Request $req) {
    if ($req->editing)
      return $this->editProduct($req);
    if (!$req->has('code')) {
      $app = AppConfig::find(1);
      $req->code = $app->auto_code;
      $product = Product::where('code', $req->code)->first();
      while($product) {
        $req->code = $app->auto_code;
        $product = Product::where('code', $req->code)->first();
        $app->auto_code = $app->auto_code+1;
      } 
      $app->save();
    }
    $product = Product::where('code', $req->code)->first();
    if ($product) {
      $product->status = 'CODE_EXISTS';
      return $product;
    }
    $product = Product::where('name', $req->name)->first();
    if ($product) {
      $product->status = 'NAME_EXISTS';
      return $product;
    }
    try {
      $product = Product::create([///creo el producto
                    'code' => $req->code,
                    'name' => $req->name,
                    'slug' => str_slug($req->name),
                    'brand_id' => $req->id_brand,
                    'reference_id' => $req->id_reference,
                    'short_description' => $req->short_description,
                    'full_description' => $req->full_description,
                    'type_id' => $req->id_type,
                    'active' => ($req->product_actived == 'on') ? 1 : 0
                  ]);
      $req->purchase_price = preg_replace("/[^0-9]/", "",$req->purchase_price);
      $req->sale_price = preg_replace("/[^0-9]/", "",$req->sale_price);
      $productLot = ProductLot::create([///agrego el lote del producto
                        'product_id' => $product->id,
                        'supplier_id' => $req->id_supplier,
                        'purchase_price' => $req->purchase_price,
                        'sale_price' => $req->sale_price,
                        'quantity' => $req->quantity,
                        'state' => $req->id_state
                      ]);
      $product->lot_id = $productLot->id;
      $product->save();
      
      $user_id = Auth::user()->id;
      $currentAction = 'guardando log';
      $product_action = ProductAction::create([
                        'product_id' => $product->id,
                        'user_id' => $user_id,
                        'action' => 'create' 
                      ]);
      ///agrego a la marca del producto la cantidad de productos y se suma a la existente
      $product->brand->product_num = $product->brand->product_num+$req->quantity;
      $product->brand->save();
      ////creo los atributos del producto y las etiquetas de busqueda
      $productType = Type::find($req->id_type);
      $attr_list = json_decode($req->attr_list);
      $tags = $product->name.' '.
                $product->brand->name.' '.
                  $product->reference->name.' '.$productType->name;
      $currentAction = 'agregando atributos';
      foreach($attr_list as $attr) {
        $tags = $tags.' '.$attr->text.' '.$attr->value;
        ProductAttribute::create([
          'attribute_id' => $attr->id,
          'product_id' => $product->id, 
          'value' => $attr->value
        ]);
      }
      $tags = strtolower($tags);
      $tags = implode(' ',array_unique(explode(' ', $tags)));
      $product->tags = $tags;
      $product->save();
      ///agrego el producto a las categorias
      $productCategoryList = json_decode($req->productCategoryList);
      foreach($productCategoryList as $category) {
        CategoryProduct::create([
          'product_id' => $product->id,
          'category_id' => $category->id_subcategory
        ]);
      }
      ///guardar las imagenes
      $destinationPath = 'images/products/246x186/';
      $originalPath = 'images/products/433x325/';
      $largePath = 'images/products/1299x975/';
      $thumbnailPath = 'images/products/194x143/';
      $thumbnailPath_ = 'images/products/73x73/';
      $thumbnailPath__ = 'images/products/67x60/';
      for ($i = 1; $i <= 5; $i++)
      {
        if ($req->hasFile('image'.$i)) {
          $imageName = $product->id.'-img'.$i.'-'.$product->slug.'.'.Input::file('image'.$i)->getClientOriginalExtension();
          ProductImage::create([
            'product_id' => $product->id,
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
      //$product->status = 'SUCCESS';
      return response()->json(['status' => 'SUCCESS']);
    } catch(\Illuminate\Database\QueryException $e) {
      $product->delete();
      return response()->json(['status' => 'ERROR']);
    }
  } 
  */
  public function getProductById(Request $req) {
    if (!$req->code)
      return response()->json(['status' => 'NEED_MORE_PARAMETERS']);
    $product = Product::with(['attributes', 'lot', 'images'])->where('code', $req->code)->first();
    if (!$product)
      return response()->json(['status' => 'NOT_FOUND']);
    $product->status = 'SUCCESS';
    $lot = Lot::where('product_id', $product->id)->where('quantity', '>', 0)->get();
    $subcategories = CategoryProduct::where('product_id', $product->id)->get();
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
    return response()->json(['product' => $product, 'categories' => $categories, 'lot' => $lot]);
  }
  public function productListView() {
    $menu = ['product', 'list'];
    $products = Product::with(['lot', 'discount', 'images', 'brand', 'reference'])->orderBy('created_at', 'desc')->paginate(20);;
    return view('admin.product.list')->with(['menu' => $menu, 'products' => $products]);
  }
  public function productTurn(Request $req) {
    $validator = Validator::make($req->all(), [
      'id' => 'required|numeric|exists:products'
    ]);
    if ($validator->fails()) {
      return response()->json(['status' => 'VALIDATION_ERROR']);
    }
    $product = Product::find($req->id);
    $product->active = ($product->active) ? 0 : 1;
    $product->save();
    return response()->json(['status' => 'SUCCESS', 'product' => $product]);
  }
}
