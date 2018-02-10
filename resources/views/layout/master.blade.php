<!DOCTYPE html>
<html lang="es">
	<head>
		<meta charset="utf-8" />
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />
		<meta name="description" content="Tienda de tecnología. Ventas al por mayor y al detal." />
    <meta name="keywords" content="celuclock, celulares, moviles, telefonos, tecnologia, ventas, venta, celular, movil, telefono, samsung, huawei, apple, htc, zoom, sky, sky devices, iphone, galaxy, colombia, cartagena, compras, compra, blu, xbox, playstation, psp, motorola, lg, azumi, tienda, tiendas, ecommerce"/>
    <meta name="author" content="CeluClock" />
    <meta name="copyright" content="CeluClock" />
    <meta name="robots" content="index, follow" />
  	<meta name="csrf_token" content="{{ csrf_token() }}" />
  	<title>CeluClock - @yield('title')</title>
  	<link href='https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800' rel='stylesheet' type='text/css'>
  	<link rel="stylesheet" href="{{ asset('/css/bootstrap.min.css') }}">
  	<link rel="stylesheet" href="{{ asset('/css/toastr.min.css') }}">
  	<link rel="stylesheet" href="{{ asset('/css/main.css') }}?<?php echo time(); ?>">
  	<link rel="stylesheet" href="{{ asset('/css/orange.css') }}">
  	<link rel="stylesheet" href="{{ asset('/css/owl.carousel.min.css') }}">
		<link rel="stylesheet" href="{{ asset('/css/owl.transitions.css') }}">
		<link rel="stylesheet" href="{{ asset('/css/animate.min.css') }}">
		<link rel="stylesheet" href="{{ asset('/css/sweetalert2.min.css') }}">
		<link rel="stylesheet" href="{{ asset('/css/font-awesome.min.css') }}">
		<link rel="stylesheet" href="{{ asset('css/magnific-popup.css') }}">
		<link rel="shortcut icon" href="{{ asset('/images/favicon.ico') }}">
		<script>
		  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

		  ga('create', 'UA-90494732-1', 'auto');
		  ga('send', 'pageview');
		</script>
	</head>
<body>
	<div class="wrapper">
		@section('content')
    @show
	</div>
	<script src="{{ asset('js/vue.js') }}"></script>
	<script src="{{ asset('js/vee-validate.js') }}"></script>
	<script src="{{ asset('/js/jquery-3.1.1.min.js') }}"></script>
	<script src="{{ asset('/js/bootstrap.min.js') }}"></script>
	<script src="{{ asset('/js/bootstrap-hover-dropdown.min.js') }}"></script>
	<script src="{{ asset('/js/owl.carousel.min.js') }}"></script>
	<script src="{{ asset('/js/css_browser_selector.min.js') }}"></script>
	<script src="{{ asset('/js/echo.min.js') }}"></script>
	<script src="{{ asset('/js/jquery.easing-1.3.min.js') }}"></script>
	<script src="{{ asset('/js/bootstrap-slider.min.js') }}"></script>
	<script src="{{ asset('/js/jquery.raty.min.js') }}"></script>
	<script src="{{ asset('/js/jquery.prettyPhoto.min.js') }}"></script>
	<script src="{{ asset('/js/jquery.customSelect.min.js') }}"></script>
	<script src="{{ asset('/js/wow.min.js') }}"></script>
	<script src="{{ asset('/js/moment.js') }}"></script>
  <script src="{{ asset('/js/toastr.min.js') }}"></script>
  <script src="{{ asset('/js/sweetalert2.min.js') }}"></script>
  <script src="{{ asset('/js/jquery.magnific-popup.min.js') }}"></script>
	<script src="{{ asset('/js/scripts.js') }}?<?php echo time(); ?>"></script>
	@section('script')
	@show
	@section('script2')
	@show
</body>
</html>
