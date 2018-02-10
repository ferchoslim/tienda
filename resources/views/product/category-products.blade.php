<section id="gaming">
  <div class="grid-list-products">
    <h2 class="section-title">
    @if (isset($category))
      {{ $category->name }}
    @else 
      Resultado de Busqueda
    @endif
    </h2>
    <div class="control-bar">
      Página {{ $products->currentPage() }}-{{ $products->lastPage() }} de {{ $products->total() }} resultados.
      <div class="grid-list-buttons">
        <ul>
          <li class="grid-list-button-item" id="product-category-grid"><a data-toggle="tab" href="#grid-view"><i class="fa fa-th-large"></i> Cuadrícula</a></li>
          <li class="grid-list-button-item" id="product-category-list"><a data-toggle="tab" href="#list-view"><i class="fa fa-th-list"></i> Lista</a></li>
        </ul>
      </div>
    </div>       
    <div class="tab-content">
        <div id="grid-view" class="products-grid fade tab-pane in">
          @if ($products->total() == 0)
            <h1>No se encontraron resultados.</h1>
          @endif
            <div class="product-grid-holder">
                <div class="row no-margin">
                    @foreach($products as $product)                        
                      <div class="col-xs-12 col-sm-4 no-margin product-item-holder hover">
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
                            data-echo="{{ URL::asset('images/products/246x186/'.$product->images->first()->name) }}" />
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
                            <a 
                              href="/{{ $product->slug }}"
                              class="le-button">comprar</a>
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
            </div>
            <div class="pagination-holder">
                <div class="row">
                    <div class="col-xs-12 col-sm-6 text-left">
                      {!! $products->appends(Request::only('q'))->links() !!}
                    </div>
                    <div class="col-xs-12 col-sm-6">
                        <div class="result-counter">
                          Página {{ $products->currentPage() }}-{{ $products->lastPage() }} de {{ $products->total() }} resultados.
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="list-view" class="products-grid fade tab-pane in">
          @if ($products->total() == 0)
            <h1>No se encontraron resultados.</h1>
          @endif
            <div class="products-list">
                @foreach($products as $product) 
                <div class="product-item product-item-holder">
                    @if ($product->created_at > new \DateTime('-15 days'))
                      <div class="ribbon blue"><span>nuevo</span></div>
                    @endif
                    @php
                    $hasDiscount = $product->hasDiscount;
                    @endphp
                    @if ($hasDiscount)
                      <div class="ribbon red"><span>oferta</span></div>
                    @endif
                    <div class="row">
                        <div class="no-margin col-xs-12 col-sm-4 image-holder">
                            <div class="image">
                              <a href="/{{ $product->slug }}">
                                <img 
                                alt="{{ $product->name }}" 
                                src="{{ asset('images/blank.gif') }}" 
                                data-echo="{{ asset('images/products/246x186/'.$product->images->first()->name) }}" />
                              </a>
                          </div>
                        </div>
                        <div class="no-margin col-xs-12 col-sm-5 body-holder">
                            <div class="body">
                                @if ($hasDiscount)
                                  <div class="label-discount green">-{{ $hasDiscount }}%</div>
                                @endif
                                <div class="title">
                                    <a href="/{{ $product->slug }}">{{ $product->name }}</a>
                                </div>
                                <div class="brand">{{ $product->brand->name }}</div>
                                <div class="excerpt">
                                    <p>{{ $product->short_description }}</p>
                                </div>
                            </div>
                        </div>
                        <div class="no-margin col-xs-12 col-sm-3 price-area">
                            <div class="right-clmn">
                                @if ($hasDiscount)
                                  <div class="price-prev">${{ number_format($product->lot->sale_price) }}</div>
                                  <div class="price-current">${{ number_format($product->lot->sale_price-($product->lot->sale_price*$hasDiscount)/100) }}</div>
                                @else
                                  <div class="price-current">${{ number_format($product->lot->sale_price) }}</div>
                                @endif
                                <div class="availability"><label>disponibilidad:</label><span class="available">{{ $product->lot->quantity }}</span></div>
                                <a class="le-button" href="/{{ $product->slug }}">comprar</a>
                            </div>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
            <div class="pagination-holder">
                <div class="row">
                    <div class="col-xs-12 col-sm-6 text-left">
                      {!! $products->appends(Request::only('q'))->links() !!}
                    </div>
                    <div class="col-xs-12 col-sm-6">
                        <div class="result-counter">
                          Página {{ $products->currentPage() }}-{{ $products->lastPage() }} de {{ $products->total() }} resultados.
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
  </div>
</section>
@section('script')
<script>
  $(function() {
    if (localStorage.getItem('product-category') == null) {
        localStorage.setItem('product-category', 'grid');
        $('#grid-view').addClass('active');
    }
    else if (localStorage.getItem('product-category') == 'grid') {
        $('#product-category-grid').addClass('active');
        $('#grid-view').addClass('active');
      }
    else {
        $('#product-category-list').addClass('active');
        $('#list-view').addClass('active');
    }
    $('#product-category-grid').click(function(event) {
      event.preventDefault();
      localStorage.setItem('product-category', 'grid')
    });

    $('#product-category-list').click(function(event) {
      event.preventDefault();
      localStorage.setItem('product-category', 'list')
    });
    if ($('.price-slider').length > 0) {
      $('.price-slider').slider({
        min: {{ $minPrice }},
        max: {{ $maxPrice }},
        step: 10000,
        value: [{{ $minPriceFiltered }}, {{ $maxPriceFiltered }}],
        handle: "square",
        formatter: function(value) {
          return number_format(value[0])+' hasta '+number_format(value[1]);
        }
      });
    }
    $('#btn-filter').click(function(event) {
      //event.preventDefault();
      $('#form-filter').submit();
    });
  });
</script>
@endsection