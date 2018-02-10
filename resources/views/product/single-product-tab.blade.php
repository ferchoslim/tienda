<section id="single-product-tab">
  <div class="container">
  @if (($product->full_description != "") || sizeof($product->attributes))
  <div class="tab-holder">
    <ul class="nav nav-tabs simple" >
      @if ($product->full_description != "")
        <li class="active"><a href="#description" data-toggle="tab">Descripción</a></li>
      @endif
      @if (!$product->attributes->isEmpty())
        <li class="@if ($product->full_description == "") active @endif">
          <a href="#additional-info" data-toggle="tab">Informacion Adicional</a>
        </li>
      @endif
    </ul>
    <div class="tab-content">
    @if ($product->full_description != "")
      <div class="tab-pane active" id="description">
          <p id="product_description">{{ $product->full_description }}</p>
      </div>
    @endif
      <div class="tab-pane @if ($product->full_description == "") active @endif" id="additional-info">
        <ul class="tabled-data">
        @if($product->reference->ref) 
        <li>
          <label id="product_attribute">Referencia</label>
          <div class="value" id="product_attribute_value">{{ $product->reference->ref }}</div>
        </li> 
        @endif
        @foreach($product->attributes as $attribute)
        <li>
          <label id="product_attribute">{{ $attribute->attribute->name }}</label>
          <div class="value" id="product_attribute_value">{{ $attribute->value }}</div>
        </li> 
        @endforeach
        </ul>
      </div>
    </div>
  </div>
  @endif
  </div>
</section>