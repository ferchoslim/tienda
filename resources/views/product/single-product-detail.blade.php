<div class="no-margin col-xs-12 col-sm-7 body-holder">
  <div class="body">
    <!--<div class="star-holder inline">
      <div class="star big" data-score="Product::average($product->id)"></div>
      <span style="font-size: 0.8em; color: #f27a24;">$product->Score</span>
    </div>-->
    <div class="title"><h1 id="product_name">{{ $product->name }}</h1></div>
    <div class="brand" id="product_brand">{{ $product->brand->name }}</div>
    <div class="excerpt">
      <p>{{ $product->short_description }}</p>
    </div>
    <div class="prices">
      @php
      $hasDiscount = $product->hasDiscount;
      @endphp
      @if ($hasDiscount)
      <div class="price-current" id="product_sale_price">${{ number_format($product->lot->sale_price-($product->lot->sale_price*$hasDiscount)/100) }}</div>
      <div class="price-prev">${{ number_format($product->lot->sale_price) }}</div>
      <p class="small" style="color: #FE2E2E;">Ahorra ${{ number_format(($product->lot->sale_price*$hasDiscount)/100) }} (-{{ $hasDiscount }}%)</p>
      @else
      <div class="price-current" id="product_sale_price">${{ number_format($product->lot->sale_price) }}</div>
      @endif
      <div class="small">
        <label>Código del producto:</label>
        <span>{{ $product->id }}</span>
      </div>
      <div class="small">
        <label>Unidades Disponibles:</label>
        <span class="available" id="product_stock">{{ $product->lot->quantity }}</span>
      </div>
    </div>
    <form method="post" action="/carrito" id="addToCart-form">
      {{ csrf_field() }}
      <input type="hidden" name="id" value="{{ $product->id }}">
      <div class="qnt-holder">
        @if ($product->Lot->quantity != 0)
        <div class="le-quantity">
          <a class="minus" href="#reduce"></a>
          <input name="quantity" class="product-quantity" type="text" value="1" />
          <input type="hidden" value="{{ $product->lot->quantity }}" />
          <a class="plus" href="#add"></a>
        </div>
        <input type="submit" id="addto-cart" class="le-button huge" value="comprar">
        @else
        <h1>No Hay Unidades Disponibles.</h1>
        @endif
        </div><!-- /.qnt-holder -->
      </form>
      </div><!-- /.body -->
      </div><!-- /.body-holder -->
@section('script2')
<script>
$(function () {
  $('.image-zoom').magnificPopup({
    type: 'image',
    closeOnContentClick: true,
    closeBtnInside: false,
    fixedContentPos: true,
    mainClass: 'mfp-no-margins mfp-with-zoom', // class to remove default margin from left and right side
    image: {
      verticalFit: true
    },
    zoom: {
      enabled: true,
      duration: 300 // don't foget to change the duration also in CSS
    }
  });
  /*if ($('.star').length > 0) {
    $('.star').each(function() {
      var $star = $(this);

      $star.raty({
        hints: ['lo odio', 'no me gusta', 'esta bueno', 'me gusta', 'me encanta'],
        starOff: 'images/star-big-off.png',
        starOn: 'images/star-big-on.png',
        space: false,
      @if(!auth()->user())
        readOnly: true,
      @else 
        click: function(score, e) {
          $.post('/product/rate', 
            { _token: $('[name="csrf_token"]').attr('content'), id_product: {{ $product->id }}, score: score 
          });
        },
      @endif
        score: function() {
          return $(this).attr('data-score');
        }
      });
    });
  }*/
});
</script>
@stop