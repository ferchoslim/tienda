@inject('cart', 'App\Cart')
@php
  $quanities = 0;
  $total = 0;
  if (auth()->user()) {
    $cart = $cart->with('products')->where('user_id', auth()->user()->id)->first();
    if ($cart) {
      $products = $cart->products;
      foreach($products as $product) {
        $quanities += $product->quantity;
        $total += $product->sale_price*$product->quantity;
      }
    }
  }
  else {
    $cart = $cart->with('products')->where('session_id', session()->getId())->first();
    if ($cart) {
      $products = $cart->products;
      foreach($products as $product) {
        $quanities += $product->quantity;
        $total += $product->sale_price*$product->quantity;
      }
    }
  }
@endphp
<div class="top-cart-row-container">
  <!--<div class="wishlist-compare-holder">
    <div class="wishlist ">
      <a href="#"><i class="fa fa-heart"></i> wishlist <span class="value">(21)</span> </a>
    </div>
    <div class="compare">
      <a href="#"><i class="fa fa-exchange"></i> compare <span class="value">(2)</span> </a>
    </div>
  </div>-->
  <div class="top-cart-holder dropdown animate-dropdown">
    <div class="basket">
      <a class="dropdown-toggle" href="/carrito">
        <div class="basket-item-count">
          <span class="count">{{ $quanities }}</span>
          <img src="{{ asset('images/icon-cart.png') }}" alt="" />
        </div>
        <div class="total-price-basket">
          <span class="lbl">tu carrito:</span>
          <span class="total-price">
            <span class="sign">$</span><span class="value">{{ number_format($total) }}</span>
          </span>
        </div>
      </a>
    </div>
  </div>
</div>