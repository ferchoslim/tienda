@inject('products', 'App\Product')
@php
if (Cache::has('footer.newProducts')) {
  $newProducts = Cache::get('footer.newProducts');
}
else {
  $newProducts = $products->with(['lot', 'discount', 'images', 'brand', 'reference'])
                                ->orderBy('created_at', 'desc')->limit(3)->get();
  Cache::put('footer.newProducts', $newProducts, 20);
}
@endphp
<div class="widget">
	<h2>recién Llegados</h2>
	<div class="body">
		<ul>
			@foreach($newProducts as $product)
			<li>
				<div class="row">
					<div class="col-xs-12 col-sm-9 no-margin">
						<a href="/{{ $product->slug }}">{{ $product->name }}</a>
						<div class="price">
						@php
						$hasDiscount = $product->hasDiscount;
						@endphp
            @if ($hasDiscount)
              <div class="price-prev">${{ number_format($product->lot->sale_price) }}</div>
              <div class="price-current">${{ number_format($product->lot->sale_price-($product->lot->sale_price*$hasDiscount)/100) }}</div>
            @else
              <div class="price-current">${{ number_format($product->lot->sale_price) }}</div>
            @endif
          </div>
					</div>
					<div class="col-xs-12 col-sm-3 no-margin">
						<a href="/{{ $product->slug }}" class="thumb-holder">
							<img 
							alt="{{ $product->name }}" 
							src="{{ asset('images/blank.gif') }}" 
							data-echo="{{ asset('images/products/73x73/'.$product->images->first()->name) }}" />
						</a>
					</div>
				</div>
			</li>
			@endforeach
		</ul>
	</div>
</div>