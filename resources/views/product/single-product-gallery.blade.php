<div class="no-margin col-xs-12 col-sm-6 col-md-5 gallery-holder">
  <div class="product-item-holder size-big single-product-gallery small-gallery">
    <div id="owl-single-product">
      @php
      $i = 0;
      $images = $product->images;
      @endphp
      @foreach($product->images as $image)
      <div class="single-product-gallery-item" id="slide{{ $i++ }}">
        <a class="image-zoom" 
        @if(file_exists(public_path().'/images/products/1299x975/'.$image->name))
        href="{{ URL::asset('images/products/1299x975/'.$image->name) }}"
        @else
        href="{{ URL::asset('images/products/433x325/'.$image->name) }}"
        @endif
          >
          <img 
          class="img-responsive" 
          alt="{{ $product->name }}" 
          src="{{ URL::asset('images/blank.gif') }}" 
          data-echo="{{ URL::asset('images/products/433x325/'.$image->name) }}" />
        </a>
      </div>
      @endforeach
    </div>
    <div class="single-product-gallery-thumbs gallery-thumbs">
      <div id="owl-single-product-thumbnails">
      @php
      $i = 0;
      @endphp
      @foreach($images as $image)
        <a 
        @if ($i == 0)
          class="horizontal-thumb active" 
        @else
          class="horizontal-thumb"
        @endif 
          data-target="#owl-single-product" data-slide="{{ $i }}" href="#slide{{ $i++ }}">
            <img 
              alt="{{ $product->name }}" 
              src="{{ URL::asset('images/blank.gif') }}" 
              data-echo="{{ URL::asset('images/products/67x60/'.$image->name) }}" />
          </a>
        @endforeach
      </div>
      <div class="nav-holder left hidden-xs">
        <a class="prev-btn slider-prev" data-target="#owl-single-product-thumbnails" href="#prev"></a>
      </div>
                  
      <div class="nav-holder right hidden-xs">
          <a class="next-btn slider-next" data-target="#owl-single-product-thumbnails" href="#next"></a>
      </div>
    </div>
  </div>
</div>