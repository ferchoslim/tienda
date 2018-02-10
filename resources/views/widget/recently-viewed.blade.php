@inject('recentlyViewed', 'App\RecentlyViewed')
@php
	$sessionId = session()->getId();
	$recentlyViewed = $recentlyViewed->where('session_id', $sessionId)->orderBy('created_at', 'desc')->get();
	if (isset($product))
		try {
			$justViewed = \App\RecentlyViewed::create([
				'session_id' => $sessionId,
				'product_id' => $product->id
			]);
		} catch(\Illuminate\Database\QueryException $e) {

		}
@endphp
@if (!$recentlyViewed->isEmpty())
	<section id="recently-reviewd" class="wow fadeInUp">
		<div class="container">
			<div class="carousel-holder hover">
				<div class="title-nav">
					<h2 class="h1">Visto Recientemente</h2>
					<div class="nav-holder">
						<a href="#prev" data-target="#owl-recently-viewed" class="slider-prev btn-prev fa fa-angle-left"></a>
						<a href="#next" data-target="#owl-recently-viewed" class="slider-next btn-next fa fa-angle-right"></a>
					</div>
				</div>
				<div id="owl-recently-viewed" class="owl-carousel product-grid-holder">
					<?php $now = date('Y-m-d H:i:s'); ?>
					@foreach($recentlyViewed as $viewed)
					@php
					$hasDiscount = $viewed->product->hasDiscount;
					@endphp
					<div class="carousel-item product-item-holder no-margin size-small hover">
						<div class="product-item">
              @if ($viewed->product->created_at > new \DateTime('-15 days'))
                <div class="ribbon blue"><span>nuevo</span></div>
              @endif
              @if ($hasDiscount)
                <div class="ribbon red"><span>oferta</span></div>
              @endif
              <div class="image">
                <a href="/{{ $viewed->product->slug }}">
                  <img 
                  alt="{{ $viewed->product->name }}" 
                  src="{{ URL::asset('images/blank.gif') }}" 
                  data-echo="{{ URL::asset('images/products/194x143/'.$viewed->product->images->first()->name) }}" />
                </a>
              </div>
              <div class="body">
                @if ($hasDiscount)
                  <div class="label-discount green">-{{ $hasDiscount }}%</div>
                @endif
                <div class="title">
                  <a href="/{{ $viewed->product->slug }}">{{ $viewed->product->name }}</a>
                </div>
                <div class="brand">{{ $viewed->product->brand->name }}</div>
              </div>
              <div class="prices">
                @if ($hasDiscount)
                  <div class="price-prev">${{ number_format($viewed->product->lot->sale_price) }}</div>
                  <div class="price-current pull-right">${{ number_format($viewed->product->lot->sale_price-($viewed->product->lot->sale_price*$hasDiscount)/100) }}</div>
                @else
                  <div class="price-current pull-right">${{ number_format($viewed->product->lot->sale_price) }}</div>
                @endif
              </div>
              <div class="hover-area">
                <div class="add-cart-button">
                  <a href="{{ $viewed->product->slug }}" class="le-button">comprar</a>
                </div>
              </div>
            </div>
					</div>
					@endforeach
				</div>
			</div>
		</div>
	</section>
@endif