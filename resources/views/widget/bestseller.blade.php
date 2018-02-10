@inject('products', 'App\Product')
@php
if (Cache::has('widget.productsBestseller')) {
  $productsBestseller = Cache::get('widget.productsBestseller');
}
else {
  $productsBestseller = $products->with(['lot', 'discount', 'images', 'brand', 'reference'])
                                ->orderBy('sold', 'desc')->limit(7)->get();
  Cache::put('widget.productsBestseller', $productsBestseller, 20);
}
@endphp
@if (!$productsBestseller->isEmpty())
<section id="bestsellers" class="color-bg wow fadeInUp">
  <div class="container">
    <h1 class="section-title">Más Vendidos</h1>
    <div class="product-grid-holder medium">
      <div class="col-xs-12 col-md-7 no-margin">
        <div class="row no-margin">
          @for($i=1;$i<=3;$i++)
          @php
          $product = $productsBestseller[$i];
          @endphp
          <div class="col-xs-12 col-sm-4 no-margin product-item-holder size-medium hover">
            <div class="product-item">
              @if ($product->created_at > new \DateTime('-15 days'))
              <div class="ribbon blue"><span>nuevo</span></div>
              @endif
              @if ($hasDiscount = $product->hasDiscount)
              <div class="ribbon red"><span>oferta</span></div>
              @endif
              <div class="image">
                <a href="/{{$product->slug}}">
                  <img
                  alt="{{ $product->name }}"
                  src="{{ asset('images/blank.gif') }}"
                  data-echo="{{ asset('images/products/194x143/'.$product->images->first()->name) }}" />
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
                  <a href="{{ $product->slug }}" class="le-button">comprar</a>
                </div>
              </div>
            </div>
          </div>
          @endfor
        </div>
        <div class="row no-margin">
          @for($i=4;$i<=6;$i++)
          @php
          $product = $productsBestseller[$i];
          @endphp
          <div class="col-xs-12 col-sm-4 no-margin product-item-holder size-medium hover">
            <div class="product-item">
              @if ($product->created_at > new \DateTime('-15 days'))
              <div class="ribbon blue"><span>nuevo</span></div>
              @endif
              @if ($hasDiscount = $product->hasDiscount)
              <div class="ribbon red"><span>oferta</span></div>
              @endif
              <div class="image">
                <a href="/{{$product->slug}}">
                  <img
                  alt="{{ $product->name }}"
                  src="{{ asset('images/blank.gif') }}"
                  data-echo="{{ asset('images/products/194x143/'.$product->images->first()->name) }}" />
                </a>
              </div>
              <div class="body">
                @if ($hasDiscount)
                <div class="label-discount green">-{{ $hasDiscount }}%</div>
                @endif
                <div class="title">
                  <a href="/{{$product->slug}}">{{ $product->name }}</a>
                </div>
                <div class="brand">{{ $product->reference->brand->name }}</div>
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
                  <a href="{{ $product->slug }}" class="le-button">comprar</a>
                </div>
              </div>
            </div>
          </div>
          @endfor
        </div>
      </div>
      <div class="col-xs-12 col-md-5 no-margin">
        <div class="product-item-holder size-big single-product-gallery small-gallery">
          <div id="best-seller-single-product-slider" class="single-product-slider owl-carousel">
            @php
            $productsBestseller = $productsBestseller[0];
            $hasDiscount = $productsBestseller->hasDiscount;
            $i=0;
            @endphp
            @foreach($images = $productsBestseller->images as $image)
            <div class="single-product-gallery-item" id="slide{{$i++}}">
              <a data-rel="prettyphoto" href="/{{ $productsBestseller->slug }}">
                <img alt="{{ $productsBestseller->name }}"
                src="{{ asset('images/blank.gif') }}"
                class="lazyOwl"
                data-echo="{{ asset('images/products/433x325/'.$image->name) }}"
                data-src="{{ asset('images/products/433x325/'.$image->name) }}" />
              </a>
            </div>
            @endforeach
          </div>
          <div class="gallery-thumbs clearfix">
            <ul>
              @php 
                $i=0; 
              @endphp
              @foreach($images as $image)
              <li>
                <a
                  @if($i == 0)
                  class="horizontal-thumb active"
                  @else
                  class="horizontal-thumb"
                  @endif
                  data-target="#best-seller-single-product-slider"
                  data-slide="{{$i}}"
                  href="#slide{{$i++}}">
                  <img
                  alt="{{ $image->name }}"
                  src="{{ asset('images/blank.gif') }}"
                  data-echo="{{ asset('images/products/67x60/'.$image->name) }}" />
                </a>
              </li>
              
              @endforeach
            </ul>
          </div>
          <div class="body">
            <div class="label-discount clear"></div>
            <div class="title">
              <a href="/{{ $productsBestseller->slug }}">{{ $productsBestseller->name }}</a>
            </div>
            <div class="brand">{{ $productsBestseller->reference->brand->name }}</div>
          </div>
          <div class="prices text-right">
            @if ($hasDiscount)
            <div class="price-current inline">
              ${{ number_format($productsBestseller->lot->sale_price-($productsBestseller->lot->sale_price*$hasDiscount)/100) }}
            </div>
            @else
            <div class="price-current inline">${{ number_format($productsBestseller->lot->sale_price) }}</div>
            @endif
            <a href="/{{ $productsBestseller->slug }}" class="le-button big inline">comprar</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
@endif
