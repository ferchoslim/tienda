<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\Cart;
use App\CartProduct;
use App\Product;
use App\Invoice;
use App\InvoiceProduct;
use App\PendingPayment;
use App\User;
use App\UserAddress;
use App\UserPhone;
use App\AppConfig;
use Session;
use Mail;

class CartController extends Controller
{
  /**
     * vista del carrito de compras.
     *
     * @return view
     */
  public function cartView() {
    if (Auth::check()) {
      $cart = Cart::with('products')->where('user_id', Auth::user()->id)->first();
    }
    else {
      $cart = Cart::with('products')->where('session_id', Session::getId())->first();
    }
    $priceChanged = false;
    $quantityChanged = false;
    $productDeleted = false;
    if (isset($cart->products)) {
      foreach($cart->products as $cartProduct) {
        $salePriceInCart = $cartProduct->sale_price;
        $salePriceInLot = $cartProduct->product->lot->sale_price;
        $hasDiscount = $cartProduct->product->hasDiscount;
        $salePriceInLot = ($cartProduct->hasDiscount) ? $cartProduct->product->lot->sale_price : ($salePriceInLot-($salePriceInLot*$hasDiscount)/100);



      	/*$salePrice = $cartProduct->product->lot->sale_price;
        if ($this->hasDiscount($cartProduct->product->id) != 0) {
          $salePrice = ($cartProduct->product->lot->sale_price-($cartProduct->product->lot->sale_price*$cartProduct->product->Discount->percent)/100);
        }*/
        if ($salePriceInCart != $salePriceInLot) {
          //array_push($priceChanged, $cartProduct->id);
          $priceChanged = true;
          $cartProduct->sale_price = $salePriceInLot;
          $cartProduct->save();
        }
        $productQuantityInLot = $cartProduct->product->lot->quantity;
        if ($cartProduct->quantity > $productQuantityInLot) {
          //array_push($quantityChanged, $cartProduct->id);
          $quantityChanged = true;
          $cartProduct->quantity = $productQuantityInLot;
          $cartProduct->save();
        }
        if ($productQuantityInLot == 0) {
          $cartProduct->delete();
          $productDeleted = true;
          return redirect('/carrito');
        }
      }
    }
    return view('cart.cart')->with([
                                'cart' => $cart, 
                                'priceChanged' => $priceChanged, 
                                'quantityChanged' => $quantityChanged,
                                'productDeleted' => $productDeleted
                              ]);
  }
  /**
     * borrar producto del carrito de compras.
     *
     * @return redirect
     */
  public function deleteProduct($productId) {
	  if (Auth::check()) {
      $cart = Cart::where('id_user', Auth::user()->id)->first();
    }
    else {
      $cart = Cart::where('id_session', Session::getId())->first();
    }
    $productDelete = CartProduct::where('id_cart', $cart->id)->where('id', $productId)->first();
    if ($productDelete) {
      $productDelete->delete();
    }
    return redirect('/carrito');
	}
  /**
     * agregar producto al carrito de compras.
     *
     * @return view
     */
  public function addProduct(Request $req) {
    if (Auth::check()) {
      $cart = Cart::where('user_id', Auth::user()->id)->first();
    }
    else {
      $cart = Cart::where('session_id', Session::getId())->first();
    }
    /***********************************
    ***borrar un producto del carrito***
    ***********************************/
    if ($req->product_delete) {
      $this->deleteProduct($req->product_delete);
    }
    /**********************************************************************
    ***se verifican cambios en las cantidades y precios de los productos****************VERIFICAR ESTO!!!!
    **********************************************************************/
    if ($req->update == true) {
      for($i=1; $i<=$cart->NumProducts; $i++) {
        $idCartProduct = $req['id'.$i];
        $quantityCartProduct = $req['quantity'.$i];
        if (!is_numeric($quantityCartProduct) || $quantityCartProduct < 1)
          $quantityCartProduct = 1;
        $cartProduct = CartProduct::find($idCartProduct);
        $productQuantity = $cartProduct->product->lot->quantity;
        if ($quantityCartProduct > $productQuantity)
          $quantityCartProduct = $productQuantity;
        $cartProduct->quantity = $quantityCartProduct;
        $cartProduct->save();
      }
      return redirect('/carrito');
    }
    /********************************
    ***agregar producto al carrito***
    ********************************/
    $id = $req->id;
    $quantity = $req->quantity;
    if (!is_numeric($quantity) || $quantity < 1) {
      $quantity = 1;
    }
    $product = Product::with('lot')->find($id);
    if ($quantity > $product->lot->quantity) {
      return view('cart.added')->with(['product' => $product, 'quantity' => $quantity])->withErrors('quantity');
    }
    if ($cart) {
      $cartProduct = CartProduct::where('cart_id', $cart->id)->where('product_id', $product->id)->first();
      if (!$cartProduct) {
        $salePrice = $product->lot->sale_price;
        if ($product->hasDiscount) {
          $salePrice = ($product->lot->sale_price-($product->lot->sale_price*$product->hasDiscount)/100);
        }
        $cartProduct = CartProduct::create([
                          'cart_id' => $cart->id,
                          'product_id' => $product->id,
                          'quantity' => $quantity,
                          'sale_price' => $salePrice
                        ]);
      }
      else {
        if ($cartProduct->quantity+$quantity > $product->lot->quantity) {
          return view('cart.added')->with(['product' => $product, 'quantity' => $cartProduct->quantity+$quantity])->withErrors('quantity');
        }
        $cartProduct->quantity = $cartProduct->quantity+$quantity;
        $cartProduct->save();
      }
    }
    else {
      if (Auth::check()) {
        $cart = Cart::create([
                  'user_id' => Auth::user()->id
                ]);
      }
      else {
        $cart = Cart::create([
                  'session_id' => Session::getId()
                ]);
      }
      $salePrice = $product->lot->sale_price;
      if ($product->hasDiscount) {
        $salePrice = ($product->lot->sale_price-($product->lot->sale_price*$product->hasDiscount)/100);
      }
      $cartProduct = CartProduct::create([
                        'cart_id' => $cart->id,
                        'product_id' => $product->id,
                        'quantity' => $quantity,
                        'sale_price' => $salePrice
                      ]);
    }
    return view('cart.added')->with(['product' => $product, 'cartProduct' => $cartProduct]);
  }
  public function checkoutView() {
    $userId = Auth::user()->id;
    $cart = Cart::with('products')->where('user_id', $userId)->first();
    if (!$cart || !sizeof($cart->products)) {
      return redirect('/carrito');
    }
    /**********************************************************************
    ***se verifican cambios en las cantidades y precios de los productos***
    **********************************************************************/
    $priceChanged = [];
    $quantityChanged = [];
    $cartProducts = $cart->products;
    if ($cartProducts) {
      foreach($cartProducts as $cartProduct) {
        $product = Product::with(['lot', 'Discount'])->find($cartProduct->product->id);
        $salePrice = $product->lot->sale_price;
        if ($product->hasDiscount) {
          $salePrice = ($product->lot->sale_price-($product->lot->sale_price*$product->hasDiscount)/100);
        }
        if ($cartProduct->sale_price != $salePrice) {
          array_push($priceChanged, $cartProduct->id);
          $cartProduct->sale_price = $salePrice;
          return redirect('/carrito');
        }
        if ($cartProduct->quantity > $product->lot->quantity) {
          array_push($quantityChanged, $cartProduct->id);
          $cartProduct->quantity = $product->lot->quantity;
          return redirect('/carrito');
        }
        if ($product->lot->quantity == 0) {
          $cartProduct->delete();
          return redirect('/carrito');
        }
      }
    }
    /**************************************************************
    ***se verifica que el perfil del comprador este completa***
    **************************************************************/
    $user = User::with('address')->find($userId);
    $userInfoCompleted = 0;
    if ($user->address) {
      $userInfoCompleted += 50;
    }
    if ($user->code) {
      $userInfoCompleted += 50;
    }
    if ($userInfoCompleted != 100) {
      return redirect('/perfil')->with('lastUrl', 'checkout');
    }
    return view('cart.checkout')->with(['user' => $user, 'cart' => $cart]);
  }
  public function paymentView(Request $req) {
    /***************************************************************************
    ***se optiene la referencia de pago de epayco y se procesa la informacion***
    ***************************************************************************/
    $refPayco = $req->ref_payco;
    if (!$refPayco) 
      return redirect('/pagar');
    $urlResponse = curl_init();
    curl_setopt($urlResponse, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($urlResponse, CURLOPT_URL,'https://secure.epayco.co/validation/v1/reference/'.$refPayco);
    $response = json_decode(curl_exec($urlResponse));
    if (!isset($response->success) || $response->success == false) {
      return redirect('/pagar')->with('payment', 'CAN_NOT_GET_PAYMENT_DATA');
    }
    $invoice = Invoice::where('ref_payco', $refPayco)->first();
    if ($invoice) {
      return view('cart.payment')->with(['response' => $response]);
    }
    if (isset($response->status) && $response->status == false) {
      return redirect('/pagar');
    }
    if ($response->data->x_cod_response == 1 || $response->data->x_cod_response == 3) {
      $userId = Auth::user()->id;
      $cart = Cart::where('id_user', $userId)->first();
      /*$address = UserAddress::where('id_user', $id_user)->where('id', $response->data->x_description)->first();
      if (!$address)*/
      $address = UserAddress::where('id_user', $userId)->first();
      $shippingAddress = $address->neighborhood.', '.$address->address.'. '.$address->city.', '.$address->state;
      $total = $response->data->x_amount;
      $profit = 0;
      $invoice = Invoice::create([
                    'user_id' => $userId,
                    'ref_payco' => $refPayco,
                    'amount' => $total,
                    'profit' => $profit,
                    'shipping_address' => $shippingAddress
                  ]);
      
      $products = [];
      foreach($cart->products as $cartProduct) {
        $invoiceProduct = InvoiceProduct::create([
                              'invoice_id' => $invoice->id,
                              'product_id' => $cartProduct->product->id,
                              'quantity' => $cartProduct->quantity,
                              'sale_price' => $cartProduct->sale_price,
                              'purchase_price' => $cartProduct->product->lot->purchase_price,
                              'discount' => $this->hasDiscount($cartProduct->product->id)
                            ]);
        $profit += $cartProduct->sale_price-$cartProduct->product->lot->purchase_price;
        $cartProduct->product->sold = $cartProduct->product->sold+$cartProduct->quantity;
        $cartProduct->product->save();
        $cartProduct->product->brand->sold = $cartProduct->product->brand->sold+$cartProduct->quantity;
        $cartProduct->product->brand->product_num = $cartProduct->product->brand->product_num-$cartProduct->quantity;
        $cartProduct->product->brand->save();
        $cartProduct->product->lot->quantity = $cartProduct->product->lot->quantity-$cartProduct->quantity;
        $cartProduct->product->lot->save();
        if ($cartProduct->product->lot->quantity == 0) {
          $newlot = Productlot::where('id_product', $cartProduct->product->id)->where('quantity', '>', 0)->orderBy('created_at')->first();
          if ($newlot) {
            $cartProduct->product->id_lot = $newlot->id;
          }
          else {
            $cartProduct->product->active = 0;
          }
          $cartProduct->product->save();
        }
        $product = array(
                      'id' => $cartProduct->product->id,
                      'quantity' => $cartProduct->quantity,
                      'name' => $cartProduct->product->name,
                      "sale_price" => $cartProduct->sale_price
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
      Mail::send('emails.invoice', ['fullname' => $fullname, 'sm' => $app, 'invoice' => $invoice, 'products' => $products], function ($m) use ($user, $app) {
        $m->from($app->sales_email, 'Ventas de CeluClock.co');
        $m->to($user->email, $user->fullname)->subject('Factura de compra #'.$invoice->id);
      });
    }
    return view('cart.payment')->with(['response' => $response]);
  }
}
