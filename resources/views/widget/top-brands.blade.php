@inject('productTopBrand', 'App\ProductBrand')
@php
if (Cache::has('widget.productTopBrand')) {
  $productTopBrand = Cache::get('widget.productTopBrand');
}
else {
  $productTopBrand = $productTopBrand->orderBy('sold', 'desc')->take(20)->get();
  Cache::put('widget.productTopBrand', $productTopBrand, 168);
}
@endphp
<section id="top-brands" class="wow fadeInUp">
  <div class="container">
    <div class="carousel-holder" >
      <div class="title-nav">
        <h1>Top Marcas</h1>
        <div class="nav-holder">
          <a href="#prev" data-target="#owl-brands" class="slider-prev btn-prev fa fa-angle-left"></a>
          <a href="#next" data-target="#owl-brands" class="slider-next btn-next fa fa-angle-right"></a>
        </div>
      </div>
      <div id="owl-brands" class="owl-carousel brands-carousel">
      @foreach($productTopBrand as $brand)
        @if ($brand->product_num != 0)
          <div class="carousel-item">
              <a href="/buscar?q={{ strtolower($brand->name) }}">
                  <img alt="{{ $brand->name }}" src="{{ asset('images/brands/145x36/'.$brand->image) }}" />
              </a>
          </div>
        @endif
      @endforeach
      </div>
    </div>
  </div>
</section>