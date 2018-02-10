<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\ProductBrand;
use App\ProductReference;
use App\Attribute;
use App\Product;
use App\ProductSupplier;
use App\ProductAttribute;
use App\ProductAttributeValue;
use App\ProductLot;
use App\ProductImage;
use App\RecentlyViewed;
use App\Category;
use App\CategoryProduct;
use App\Cart;
use App\CartProduct;
use App\AppConfig;
use App\User;
use App\UserAddress;
use App\UserPhone;
use App\Order;
use App\OrderProduct;
use App\Invoice;
use App\InvoiceProduct;
use App\PendingPayment;
use Auth;
use Session;
use Mail;

class StoreController extends Controller
{
	public function index() {
    return view('index');
  }
  public function productViewList($id_brand = null) {
    if ($id_brand) {
      $product_list = Product::where('id_brand', $id_brand)->get();
      return view('widget.product-list')->with('product_list', $product_list);
    }
    $product_list = Product::orderBy('created_at')->get();
    return view('widget.product-list')->with('product_list', $product_list);
  }
  public function productDetailView(Request $req) {
    $product = Product::where('slug', $req->slug)->first();
    if (!$product)
      return redirect('/');
    $date = new \DateTime('-30 days');
    $cleanRecentlyViewed = RecentlyViewed::where('created_at', '<', $date)->delete();
    return view('product.single-product')->with(['product' => $product]);
  }
  public function categoryView(Request $req) {
    $category_url = $req->category.'/'.$req->subcategory;
    $category = Category::with('products')->where('slug', $category_url)->first();
    if ($category) {
      $products = $category->products;
      $brands = [];
      $prices = [];
      $products_ids = [];
      $brands_selected = ($req->brand) ? $req->brand : [0];
      foreach($products as $product) {
        $brand = $product->Brand;
        array_push($products_ids, $product->id);
        array_push($prices, $product->Lot->sale_price);
        if (!count($brands)) {
          $selected = (in_array($brand->id, $brands_selected)) ? true : false;
          $_brand = array(
                    'id' => $brand->id,
                    'name' => $brand->name,
                    'selected' => $selected,
                    'num' => 1,
                    'products_ids' => array($product->id)
          );
        }
        else {
          $flag = true;
          foreach($brands as $key => $value) {
            if ($value['id'] == $brand->id) {
              $brands[$key]['num'] = $brands[$key]['num']+1;
              array_push($brands[$key]['products_ids'], $product->id); 
              $flag = false;
              $_brand = null;
            }
          }
          if ($flag) {
            $selected = (in_array($brand->id, $brands_selected)) ? true : false;
            $_brand = array(
                    'id' => $brand->id,
                    'name' => $brand->name,
                    'selected' => $selected,
                    'num' => 1,
                    'products_ids' => array($product->id)
            );
          }  
        }
        if ($_brand) {
          array_push($brands, $_brand);
        }
      }
      $price_max = (!count($prices)) ? '0' : max($prices);
      $price_min = (!count($prices)) ? '0' : min($prices);
      $min_price_filtered = ($req->filter) ? explode(',',$req->filter)[0] : $price_min;
      $max_price_filtered = ($req->filter) ? explode(',',$req->filter)[1] : $price_max;
      if ($req->filtering) {
        if ($brands_selected[0] == 0) {
          $products = Product::whereIn('id', $products_ids)
                        ->whereHas('lot', function($query) 
                          use ($min_price_filtered, $max_price_filtered) {
                            $query->where('sale_price', '>=', $min_price_filtered)
                                  ->where('sale_price', '<=', $max_price_filtered);
                      })->orderBy('created_at', 'DESC')->paginate(15);
        }
        else {
          $products_ids = [];
          foreach($brands_selected as $brand_selected) {
            foreach($brands as $brand) {
              if ($brand['id'] == $brand_selected) {
                foreach($brand['products_ids'] as $product_id) {
                  array_push($products_ids, $product_id);
                }
              }
            }
          }
          $products = Product::whereIn('id', $products_ids)
                        ->whereHas('lot', function($query) 
                          use ($min_price_filtered, $max_price_filtered) {
                            $query->where('sale_price', '>=', $min_price_filtered)
                                  ->where('sale_price', '<=', $max_price_filtered);
                      })->orderBy('created_at', 'DESC')->paginate(15);
        }
      }
      else
        $products = Product::whereIn('id', $products_ids)->orderBy('created_at', 'DESC')->paginate(15);
      $brands = json_encode($brands);
      return view('product.category')->with([
        'brands' => $brands,
        'products' => $products, 
        'category' => $category, 
        'price_max' => $price_max,
        'price_min' => $price_min,
        'min_price_filtered' => $min_price_filtered,
        'max_price_filtered' => $max_price_filtered,
        'url' => $req->subcategory
        ]);
    }
    else {
      return redirect('/');
    }
  }
  public function deleteCartProduct(Request $req) {
    if (Auth::check())
      $cart = Cart::where('id_user', Auth::user()->id)->first();
    else
      $cart = Cart::where('id_session', Session::getId())->first();
    $id_cart_product = $req->id_product;
    $cart_product = CartProduct::find($id_cart_product);
    $cart_product->delete();

    return response()->json(['response' => 'true']);
  }
  public function cartView() {
    if (Auth::check())
      $cart = Cart::with('products')->where('id_user', Auth::user()->id)->first();
    else
      $cart = Cart::with('products')->where('id_session', Session::getId())->first();

    $price_changed = [];
    $quantity_changed = [];
    if (isset($cart->products)) {
      foreach($cart->products as $cart_product) {
        $product = Product::find($cart_product->product->id);
        $now = date('Y-m-d H:i:s');
        $sale_price = $product->Lot->sale_price;
        if ($product->id_discount && $now >= $product->Discount->start && $now <= $product->Discount->end) {
          $sale_price = ($product->Lot->sale_price-($product->Lot->sale_price*$product->Discount->percent)/100);
        }
        if ($cart_product->sale_price != $sale_price) {
          array_push($price_changed, $cart_product->id);
          $cart_product->sale_price = $sale_price;
          $cart_product->save();
        }
        if ($cart_product->quantity > $product->Lot->quantity) {
          array_push($quantity_changed, $cart_product->id);
          $cart_product->quantity = $product->Lot->quantity;
          $cart_product->save();
        }
        if ($product->Lot->quantity == 0) {
          $cart_product->delete();
          return redirect('/cart');
        }
      }
    }
    return view('cart.cart')->with(['cart' => $cart, 'price_changed' => $price_changed, 'quantity_changed' => $quantity_changed]);
  }
  public function addToCart(Request $req) {
    if ($req->product_delete) {
      if (Auth::check())
        $cart = Cart::where('id_user', Auth::user()->id)->first();
      else
        $cart = Cart::where('id_session', Session::getId())->first();
      $product_delete = CartProduct::where('id_cart', $cart->id)->where('id', $req->product_delete)->first();
      if ($product_delete)
        $product_delete->delete();
      return redirect('/cart');
    }
    if ($req->update == true) {
      if (Auth::check())
        $cart = Cart::where('id_user', Auth::user()->id)->first();
      else
        $cart = Cart::where('id_session', Session::getId())->first();

      for($i=1; $i<=$cart->NumProducts; $i++) {
        $id_cart_product = $req['id'.$i];
        $quantity_cart_product = $req['quantity'.$i];
        if (!is_numeric($quantity_cart_product) || $quantity_cart_product < 1)
          $quantity_cart_product = 1;
        $cart_product = CartProduct::find($id_cart_product);
        $product_quantity = $cart_product->product->Lot->quantity;
        if ($quantity_cart_product > $product_quantity)
          $quantity_cart_product = $product_quantity;
        $cart_product->quantity = $quantity_cart_product;
        $cart_product->save();
      }
      return redirect('/cart');
    }
    $id_product = $req->id;
    $quantity = $req->quantity;
    if (!is_numeric($quantity) || $quantity < 1)
      $quantity = 1;
    $product = Product::find($id_product);
    if ($quantity > $product->Lot->quantity)
      return view('cart.added')->with(['product' => $product, 'quantity' => $quantity])->withErrors('quantity');

    if (Auth::check())
      $cart = Cart::where('id_user', Auth::user()->id)->first();
    else
      $cart = Cart::where('id_session', Session::getId())->first();

      if ($cart) {
        $cart_product = CartProduct::where('id_cart', $cart->id)->where('id_product', $product->id)->first();
        if (!$cart_product) {
          $now = date('Y-m-d H:i:s');
          $sale_price = $product->Lot->sale_price;
          if ($product->id_discount && $now >= $product->Discount->start && $now <= $product->Discount->end) {
            $sale_price = ($product->Lot->sale_price-($product->Lot->sale_price*$product->Discount->percent)/100);
          }
          $cart_product = CartProduct::create([
                            'id_cart' => $cart->id,
                            'id_product' => $product->id,
                            'quantity' => $quantity,
                            'sale_price' => $sale_price
                          ]);
        }
        else {
          if ($cart_product->quantity+$quantity > $product->Lot->quantity)
            return view('cart.added')->with(['product' => $product, 'quantity' => $cart_product->quantity+$quantity])->withErrors('quantity');
          $cart_product->quantity = $cart_product->quantity+$quantity;
          $cart_product->save();
        }
      }
      else {
        if (Auth::check())
          $cart = Cart::create([
                    'id_user' => Auth::user()->id
                  ]);
        else
          $cart = Cart::create([
                    'id_session' => Session::getId()
                  ]);
        $now = date('Y-m-d H:i:s');
        $sale_price = $product->Lot->sale_price;
        if ($product->id_discount && $now >= $product->Discount->start && $now <= $product->Discount->end) {
          $sale_price = ($product->Lot->sale_price-($product->Lot->sale_price*$product->Discount->percent)/100);
        }
        $cart_product = CartProduct::create([
                          'id_cart' => $cart->id,
                          'id_product' => $product->id,
                          'quantity' => $quantity,
                          'sale_price' => $sale_price
                        ]);
      }
    return view('cart.added')->with(['product' => $product, 'cart_product' => $cart_product]);
  }
  public function userProfileView() {
    $user = User::with(['phones', 'addresses'])->find(Auth::user()->id);
    return view('user.profile')->with(['user' => $user]);
  }
  public function userProfileSave(Request $req) {
    $user = Auth::user();
    $user->code = $req->code;
    $user->fullname = $req->fullname;
    $user->gender = $req->gender;
    $birthdate = $req->byear.'-'.$req->bmonth.'-'.$req->bday;
    $user->birthdate = $birthdate;
    $user->company = $req->company;
    $user->save();
    $addresses = $user->addresses;
    foreach($addresses as $address)
      $address->delete();
      $new_address = UserAddress::create([
                      'id_user' => $user->id,
                      'neighborhood' => $req->neighborhood,
                      'address' => $req->address,
                      'state' => $req->department,
                      'city' => $req->city
                    ]);
    $c = 1;
    $phones = $user->phones;
    foreach($phones as $phone)
      $phone->delete();
    while($req['phone'.$c]) {
      $new_phone = UserPhone::create([
                    'id_user' => $user->id,
                    'phone' => $req['phone'.$c]
                  ]);
      $c++;
    }
    $user = User::with(['phones', 'addresses'])->find(Auth::user()->id);
    return view('user.profile')->with(['user' => $user, 'saved' => true]);
  }
  public function searchResult(Request $req) {
      $search_key = $req->q;
      $search_key = str_replace(" ", "%", $search_key);
      if ($search_key == null)
        $products = Product::all();
      $products = Product::where('tags', 'like', '%'.$search_key.'%')->get();
      $brands = [];
      $prices = [];
      $products_ids = [];
      $brands_selected = ($req->brand) ? $req->brand : [0];
      foreach($products as $product) {
        $brand = $product->Brand;
        array_push($products_ids, $product->id);
        array_push($prices, $product->Lot->sale_price);
        if (!count($brands)) {
          $selected = (in_array($brand->id, $brands_selected)) ? true : false;
          $_brand = array(
                    'id' => $brand->id,
                    'name' => $brand->name,
                    'selected' => $selected,
                    'num' => 1,
                    'products_ids' => array($product->id)
          );
        }
        else {
          $flag = true;
          foreach($brands as $key => $value) {
            if ($value['id'] == $brand->id) {
              $brands[$key]['num'] = $brands[$key]['num']+1;
              array_push($brands[$key]['products_ids'], $product->id); 
              $flag = false;
              $_brand = null;
            }
          }
          if ($flag) {
            $selected = (in_array($brand->id, $brands_selected)) ? true : false;
            $_brand = array(
                    'id' => $brand->id,
                    'name' => $brand->name,
                    'selected' => $selected,
                    'num' => 1,
                    'products_ids' => array($product->id)
            );
          }  
        }
        if ($_brand) {
          array_push($brands, $_brand);
        }
      }
      $price_max = (!count($prices)) ? '0' : max($prices);
      $price_min = (!count($prices)) ? '0' : min($prices);
      $min_price_filtered = ($req->filter) ? explode(',',$req->filter)[0] : $price_min;
      $max_price_filtered = ($req->filter) ? explode(',',$req->filter)[1] : $price_max;
      if ($req->filtering) {
        if ($brands_selected[0] == 0) {
          $products = Product::whereIn('id', $products_ids)
                        ->whereHas('lot', function($query) 
                          use ($min_price_filtered, $max_price_filtered) {
                            $query->where('sale_price', '>=', $min_price_filtered)
                                  ->where('sale_price', '<=', $max_price_filtered);
                      })->orderBy('created_at', 'DESC')->paginate(15);
        }
        else {
          $products_ids = [];
          foreach($brands_selected as $brand_selected) {
            foreach($brands as $brand) {
              if ($brand['id'] == $brand_selected) {
                foreach($brand['products_ids'] as $product_id) {
                  array_push($products_ids, $product_id);
                }
              }
            }
          }
          $products = Product::whereIn('id', $products_ids)
                        ->whereHas('lot', function($query) 
                          use ($min_price_filtered, $max_price_filtered) {
                            $query->where('sale_price', '>=', $min_price_filtered)
                                  ->where('sale_price', '<=', $max_price_filtered);
                      })->orderBy('created_at', 'DESC')->paginate(15);
        }
      }
      else
        $products = Product::whereIn('id', $products_ids)->orderBy('created_at', 'DESC')->paginate(15);
      $brands = json_encode($brands);
      return view('product.category')->with([
        'brands' => $brands,
        'products' => $products, 
        'price_max' => $price_max,
        'price_min' => $price_min,
        'min_price_filtered' => $min_price_filtered,
        'max_price_filtered' => $max_price_filtered,
        'search_key' => $req->search_key
        ]);
  }
  /*public function checkoutView() {
    $id_user = Auth::user()->id;
    $cart = Cart::with('products')->where('id_user', $id_user)->first();
    if (!$cart || !sizeof($cart->products))
      return redirect('/cart');
    $price_changed = [];
    $quantity_changed = [];
    if (isset($cart->products)) {
      foreach($cart->products as $cart_product) {
        $product = Product::find($cart_product->product->id);
        $now = date('Y-m-d H:i:s');
        $sale_price = $product->Lot->sale_price;
        if ($product->id_discount && $now >= $product->Discount->start && $now <= $product->Discount->end) {
          $sale_price = ($product->Lot->sale_price-($product->Lot->sale_price*$product->Discount->percent)/100);
        }
        if ($cart_product->sale_price != $sale_price) {
          array_push($price_changed, $cart_product->id);
          $cart_product->sale_price = $sale_price;
          return redirect('/cart');
        }
        if ($cart_product->quantity > $product->Lot->quantity) {
          array_push($quantity_changed, $cart_product->id);
          $cart_product->quantity = $product->Lot->quantity;
          return redirect('/cart');
        }
        if ($product->Lot->quantity == 0) {
          $cart_product->delete();
          return redirect('/cart');
        }
      }
    }
    $user = User::with(['addresses', 'phones'])->find($id_user);
    $user_complete = 0;
    if (!$user->addresses->isEmpty())
      $user_complete += 20;
    if (!$user->phones->isEmpty())
      $user_complete += 20;
    if ($user->code)
      $user_complete += 20;
    if ($user->gender)
      $user_complete += 20;
    if ($user->birthdate)
      $user_complete += 20;
    if ($user_complete != 100)
      return redirect('/profile');
    return view('cart.checkout')->with(['user' => $user, 'cart' => $cart]);
  }*/
  /*public function paymentView(Request $req) {
    $ref_payco = $req->ref_payco;
    if (!$ref_payco) 
      return redirect('/checkout');
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_URL,'https://secure.epayco.co/validation/v1/reference/'.$ref_payco);
    $content = curl_exec($ch);
    $response = json_decode($content);
    if ($response->success == false)
      return redirect('/');
    $invoice = Invoice::where('ref_payco', $ref_payco)->first();
    if ($invoice) 
      return view('cart.payment')->with(['response' => $response]);

    if (isset($response->status) && $response->status == false)
      return redirect('/checkout');

    if ($response->data->x_cod_response == 1 || $response->data->x_cod_response == 3) {
      $id_user = Auth::user()->id;
      $cart = Cart::where('id_user', $id_user)->first();
      /*$address = UserAddress::where('id_user', $id_user)->where('id', $response->data->x_description)->first();
      if (!$address)*/
      /*$address = UserAddress::where('id_user', $id_user)->first();
      $shipping_address = $address->neighborhood.', '.$address->address.'. '.$address->city.', '.$address->state;
      $total = $response->data->x_amount;
      $profit = 0;
      $invoice = Invoice::create([
                    'id_user' => $id_user,
                    'ref_payco' => $ref_payco,
                    'amount' => $total,
                    'profit' => $profit,
                    'shipping_address' => $shipping_address
                  ]);
      
      $products = [];
      foreach($cart->products as $cart_product) {
        $invoice_product = InvoiceProduct::create([
                              'id_invoice' => $invoice->id,
                              'id_product' => $cart_product->product->id,
                              'quantity' => $cart_product->quantity,
                              'sale_price' => $cart_product->sale_price,
                              'purchase_price' => $cart_product->product->Lot->purchase_price
                            ]);
        $profit += $cart_product->sale_price-$cart_product->product->Lot->purchase_price;
        $cart_product->product->sold = $cart_product->product->sold+$cart_product->quantity;
        $cart_product->product->save();
        $cart_product->product->Brand->sold = $cart_product->product->Brand->sold+$cart_product->quantity;
        $cart_product->product->Brand->product_num = $cart_product->product->Brand->product_num-$cart_product->quantity;
        $cart_product->product->Brand->save();
        $cart_product->product->Lot->quantity = $cart_product->product->Lot->quantity-$cart_product->quantity;
        $cart_product->product->Lot->save();
        if ($cart_product->product->Lot->quantity == 0) {
          $new_lot = ProductLot::where('id_product', $cart_product->product->id)->where('quantity', '>', 0)->orderBy('created_at')->first();
          if ($new_lot) {
            $cart_product->product->id_lot = $new_lot->id;
            $cart_product->product->save();
          }
          else {
            $cart_product->product->active = 0;
            $cart_product->product->save();
          }
        }
        $product = array(
                      'id' => $cart_product->product->id,
                      'quantity' => $cart_product->quantity,
                      'name' => $cart_product->product->name,
                      "sale_price" => $cart_product->sale_price
                    );
        array_push($products, $product);
      }  
      $invoice->profit = $profit;
      $invoice->save();
      $cart->delete();
      if ($response->data->x_cod_response == 3) {
        $pending = PendingPayment::create([
                    'id_invoice' => $invoice->id
                  ]);
      }

      $user = Auth::user();
      $fullname = $user->fullname;
      $email = $user->email;
      $app = AppConfig::find(1);
      $app->invoice_id = $invoice->id;
      $app->total = $total;
      Mail::send('email.invoice', ['fullname' => $fullname, 'sm' => $app, 'products' => $products], function ($m) use ($user, $app) {
        $m->from($app->sales_email, 'CeluClock.co');
        $m->to($user->email, $user->fullname)->subject('Factura de compra #'.$app->invoice_id);
      });
    }
    return view('cart.payment')->with(['response' => $response]);
  }*/
  /*public function myShopping() {
    $id_user = Auth::user()->id;
    $invoices = Invoice::with('products')->where('id_user', $id_user)->orderBy('created_at', 'DESC')->get();
    return view('user.myshopping')->with([ "invoices" => $invoices ]);
  }*/
}
