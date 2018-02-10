<footer id="footer" class="color-bg">
  <div class="container">
    <div class="row no-margin widgets-row">
      <div class="col-xs-12  col-sm-4 no-margin-left">
      @include('footer.featured-products-footer')
      </div>
      <div class="col-xs-12 col-sm-4 ">
      @include('footer.on-sale-products-footer')
      </div>
      <div class="col-xs-12 col-sm-4 ">
      @include('footer.top-rated-products-footer')
      </div>
    </div>
  </div>
  <!--<div class="sub-form-row">
    <div class="container">
      <div class="col-xs-12 col-sm-8 col-sm-offset-2 no-padding">
        <form role="form">
          <input type="text" id="suscribe-email" placeholder="Suscríbete para saber de nuestras promociones">
          <button class="le-button" id="suscribe">Suscríbete</button>
        </form>
      </div>
    </div>
  </div>-->
  <div class="link-list-row">
    <div class="container no-padding">
      <div class="col-xs-12 col-md-4 ">
        @include('footer.contact-info-footer')
      </div>
      <!--<div class="col-xs-12 col-md-8 no-margin">
        include('footer.links-footer')
      </div>-->
    </div>
  </div>
  <div class="copyright-bar">
    <div class="container">
      <div class="col-xs-12 col-sm-6 no-margin">
        <div class="copyright">
            &copy; <a href="/">CeluClock</a> - Todos los derechos reservados 2007 - {!! date("Y") !!}
        </div>
      </div>
      <div class="col-xs-12 col-sm-6 no-margin">
        <div class="payment-methods ">
          <ul>
            <li><img alt="" src="{{ URL::asset('images/payments/payment-visa.png') }}"></li>
            <li><img alt="" src="{{ URL::asset('images/payments/payment-master.png') }}"></li>
            <li><img alt="" src="{{ URL::asset('images/payments/pse.png') }}"></li>
            <li><img alt="" src="{{ URL::asset('images/payments/efecty.png') }}"></li>
            <li><img alt="" src="{{ URL::asset('images/payments/baloto.png') }}"></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</footer>