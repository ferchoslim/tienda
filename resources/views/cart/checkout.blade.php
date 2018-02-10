@extends('layout.master')
@section('title', 'Pago de Compra')
@section('content')
@include('header.top-bar')
@include('header.header')
<section id="checkout-page">
  <div class="container">
    @if (session('payment'))
      <br>
      <div class="alert alert-danger" role="alert">
        <ul>
          <li>Hubo un problema con tu pago, por favor ponte en contacto con nosotros para asistirte con el pago.</li>
        </ul>
      </div>
    @endif
    <!--<h2 class="border h1">Domicilio de Envio</h2>
    <div class="row field-row">
      <?php $default_address = null; ?>
      @foreach($user->addresses as $address)
      <div class="col-xs-12 col-sm-3">
        <div id-address="{{ $address->id }}" class="select-address
          @if ($loop->first)
          address-active
          <?php $default_address = $address->id; ?>
          @endif">
          <p>{{ $address->barrio}}, {{ $address->address }}</p>
          <p>{{ $address->city }}, {{ $address->state }}</p>
        </div>
      </div>
      @endforeach
    </div>-->
    <section id="your-order">
      <h2 class="border h1">Su Orden</h2>
      <?php $total = 0; ?>
      @foreach($cart->products as $product)
      <div class="row no-margin order-item">
        <div class="col-xs-12 col-sm-1 no-margin">
          <a href="javascript:void(0);" class="qty">{{ $product->quantity }} x</a>
        </div>
        <div class="col-xs-12 col-sm-2 no-margin">
          <a href="{{ $product->product->slug }}" class="thumb-holder">
            <img class="lazy" alt="{{ $product->product->name }}" src="{{ asset('images/products/73x73/'.$product->product->images->first()->name) }}" />
          </a>
        </div>
        <div class="col-xs-12 col-sm-7 ">
          <div class="title"><a href="{{ $product->product->slug }}">{{ $product->product->name }}</a></div>
          <div class="brand">{{ $product->product->Brand->name }}</div>
        </div>
        <div class="col-xs-12 col-sm-2 no-margin">
          <div class="price">${{ number_format($product->sale_price) }}</div>
        </div>
      </div>
      <?php $total += $product->sale_price*$product->quantity; ?>
      @endforeach
    </section>
    <div id="total-area" class="row no-margin">
      <div class="col-xs-12 col-lg-4 col-lg-offset-8 no-margin-right">
        <div id="subtotal-holder">
          <ul class="tabled-data inverse-bold no-border">
            <li>
              <label>subtotal</label>
              <div class="value ">${{ number_format($total) }}</div>
            </li>
            <li>
              <label>Envio</label>
              <div class="value">
                <div class="radio-group">
                  @if ($total > 100000)
                  <input class="le-radio" type="radio" name="group1" value="free" checked disabled> <div class="radio-label bold">Envio Gratuito</div><br>
                  @else
                  <input class="le-radio" type="radio" name="group1" value="local" checked>
                  <div class="radio-label">Precio de Envio<br><span class="bold">$11.000</span>
                  <?php $total += 11000; ?>
                </div>
                @endif
              </div>
            </div>
          </li>
          </ul><!-- /.tabled-data -->
          <ul id="total-field" class="tabled-data inverse-bold ">
            <li>
              <label>gran total</label>
              <div class="value">${{ number_format($total) }}</div>
            </li>
          </ul><!-- /.tabled-data -->
        </div><!-- /#subtotal-holder -->
      </div><!-- /.col -->
    </div><!-- /#total-area -->
    <div class="place-order-button">
      <form id="epayco-form">
        <script src="https://s3-us-west-2.amazonaws.com/epayco/v1.0/checkoutEpayco.js?{{ time() }}"
        class="epayco-button"
        data-epayco-key="0c1d334650885a50aca7849881eb1cc8"
        data-epayco-amount="{{$total}}"
        data-epayco-name="Pago de Compra"
        data-epayco-description="{{ $default_address }}"
        data-epayco-country="co"
        data-epayco-currency="cop"
        data-epayco-test="false"
        data-epayco-button="{{ asset('/images/pagar_ahora.jpg') }}"
        data-epayco-response="{{ Request::root() }}/pagado">
        </script>
      </form>
      <br>
      <a href="{{ Request::root() }}/cart" class="le-button">cancelar orden</a>   
    </div><!-- /.place-order-button -->
  </div>
</section>
@include('widget.recently-viewed')
@include('widget.top-brands')
@include('footer.footer')
@stop
@section('script2')
@stop