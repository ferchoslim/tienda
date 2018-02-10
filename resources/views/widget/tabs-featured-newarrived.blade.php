@inject('products', 'App\Product')
@php
if (Cache::has('widget.featuredProducts')) {
  $featuredProducts = Cache::get('widget.featuredProducts');
}
else {
  $featuredProducts = $products->with(['lot', 'discount', 'images', 'brand', 'reference'])
                                  ->orderBy('featured', 'desc')->orderBy('created_at', 'desc')
                                    ->limit(4)->get();
  Cache::put('widget.featuredProducts', $featuredProducts, 20);
}
if (Cache::has('widget.newProducts')) {
  $newProducts = Cache::get('widget.newProducts');
}
else {
  $newProducts = $products->with(['lot', 'discount', 'images', 'brand', 'reference'])
                              ->orderBy('created_at', 'desc')->limit(4)->get();
  Cache::put('widget.newProducts', $newProducts, 20);
}
@endphp
<div id="products-tab" class="wow fadeInUp">
  <div class="container">
    <div class="tab-holder">
      <!-- Nav tabs -->
      <ul class="nav nav-tabs" >
        <li class="active"><a href="#featured" data-toggle="tab">destacados</a></li>
        <li><a href="#new-arrivals" data-toggle="tab">recién Llegados</a></li>
      </ul>
      <!-- Tab panes -->
      <div class="tab-content">
        <div class="tab-pane active" id="featured">
          <div class="product-grid-holder">
            @foreach($featuredProducts as $product)
            <div class="col-sm-4 col-md-3 no-margin product-item-holder hover">
              <div class="product-item">
                @if ($product->created_at > new \DateTime('-15 days'))
                  <div class="ribbon blue"><span>nuevo</span></div>
                @endif
                @php
                $hasDiscount = $product->hasDiscount;
                @endphp
                @if ($hasDiscount)
                  <div class="ribbon red"><span>oferta</span></div>
                @endif
                <div class="image">
                  <a href="/{{$product->slug}}">
                    <img 
                    alt="{{ $product->name }}" 
                    src="{{ asset('images/blank.gif') }}" 
                    data-echo="{{ asset('images/products/246x186/'.$product->images->first()->name) }}" />
                  </a>
                </div>
                <div class="body">
                  @if ($hasDiscount)
                    <div class="label-discount green">-{{ $hasDiscount }}%</div>
                  @endif
                  <div class="title">
                    <a href="/{{$product->slug}}">{{ $product->name }}</a>
                  </div>
                  <div class="brand">{{ $product->brand->name }}</div>
                </div>
                <div class="prices">
                  @if ($hasDiscount)
                    <div class="price-prev">${{ number_format($product->lot->sale_price) }}</div>
                    <div class="price-current pull-right">${{ number_format($product->lot->sale_price-($product->lot->sale_price*$hasDiscount)/100) }}</div>
                  @else
                    <div class="price-current pull-right">${{ number_format($product->lot->sale_price) }}</div>
                  @endif
                </div>
                <div class="hover-area">
                  <div class="add-cart-button">
                    <a href="/{{$product->slug}}" class="le-button">comprar</a>
                  </div>
                  <!--<div class="wish-compare">
                    <a class="btn-add-to-wishlist" href="#">add to wishlist</a>
                    <a class="btn-add-to-compare" href="#">compare</a>
                  </div>-->
                </div>
              </div>
            </div>
            @endforeach
          </div>
          <!--<div class="loadmore-holder text-center">
            <a class="btn-loadmore" href="#">
              <i class="fa fa-plus"></i>
            load more products</a>
          </div>-->
        </div>
        <div class="tab-pane" id="new-arrivals">
          <div class="product-grid-holder">
            @foreach($newProducts as $product)
            <div class="col-sm-4 col-md-3 no-margin product-item-holder hover">
              <div class="product-item">
                @if ($product->created_at > new \DateTime('-15 days'))
                  <div class="ribbon blue"><span>nuevo</span></div>
                @endif
                @php
                $hasDiscount = $product->hasDiscount;
                @endphp
                @if ($hasDiscount)
                  <div class="ribbon red"><span>oferta</span></div>
                @endif
                <div class="image">
                  <a href="/{{ $product->slug }}">
                    <img 
                    alt="{{ $product->name }}" 
                    src="{{ asset('images/blank.gif') }}" 
                    data-echo="{{ asset('images/products/246x186/'.$product->images->first()->name) }}" />
                  </a>
                </div>
                <div class="body">
                  @if ($hasDiscount)
                    <div class="label-discount green">-{{ $hasDiscount }}%</div>
                  @endif
                  <div class="title">
                    <a href="/{{ $product->slug }}">{{ $product->name }}</a>
                  </div>
                  <div class="brand">{{ $product->brand->name }}</div>
                </div>
                <div class="prices">
                  @if ($hasDiscount)
                    <div class="price-prev">${{ number_format($product->lot->sale_price) }}</div>
                    <div class="price-current pull-right">${{ number_format($product->lot->sale_price-($product->lot->sale_price*$hasDiscount)/100) }}</div>
                  @else
                    <div class="price-current pull-right">${{ number_format($product->lot->sale_price) }}</div>
                  @endif
                </div>
                <div class="hover-area">
                  <div class="add-cart-button">
                    <a href="/{{$product->slug}}" class="le-button">comprar</a>
                  </div>
                  <!--<div class="wish-compare">
                    <a class="btn-add-to-wishlist" href="#">add to wishlist</a>
                    <a class="btn-add-to-compare" href="#">compare</a>
                  </div>-->
                </div>
              </div>
            </div>
            @endforeach
          </div>
          <!--<div class="loadmore-holder text-center">
            <a class="btn-loadmore" href="#">
              <i class="fa fa-plus"></i>
            load more products</a>
          </div>-->
        </div>
      </div>
    </div>
  </div>
</div>