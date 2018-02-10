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
<div class="widget">
    <h1 class="border">Más Vendidos</h1>
    <ul class="product-list">
        @foreach($productsBestseller as $product)
        @php
        $hasDiscount = $product->hasDiscount;
        @endphp
        <li class="sidebar-product-list-item">
            <div class="row">
                <div class="col-xs-4 col-sm-4 no-margin">
                    <a href="/{{ $product->slug }}" class="thumb-holder">
                        <img alt="{{ $product->name }}" 
                        src="{{ asset('images/blank.gif') }}" 
                        data-echo="{{ asset('images/products/73x73/'.$product->images->first()->name) }}" />
                    </a>
                </div>
                <div class="col-xs-8 col-sm-8 no-margin">
                    <a href="/{{ $product->slug }}">{{ $product->name }}</a>
                    <div class="price">
                        @if ($hasDiscount)
                            <div class="price-prev">${{ number_format($product->lot->sale_price) }}</div>
                            <div class="price-current">${{ number_format($product->lot->sale_price-($product->lot->sale_price*$hasDiscount)/100) }}</div>
                        @else
                            <div class="price-current">${{ number_format($product->lot->sale_price) }}</div>
                        @endif
                    </div>
                </div>  
            </div>
        </li><!-- /.sidebar-product-list-item -->
        @endforeach
    </ul><!-- /.product-list -->
</div><!-- /.widget -->