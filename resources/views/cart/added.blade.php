@extends('layout.master')
@section('title', 'Carrito de Compras')
@section('content')
	@include('header.top-bar')
  	@include('header.header')
  	<section id="cart-page">
		<div class="container">
			<div class="col-xs-12 col-md-12 items-holder no-margin">
				@if ($errors->any())
					<div class="added-error" style="font-size: 2em; color: #e74c3c;">
						<i class="fa fa-check"></i>
						Cantidad de Producto Excedida; Producto no Agregado
					</div>
					<p style="color: #e74c3c;">Cantidad de productos dispoibles: {{ $product->lot->quantity }}, usted selecciono: {{ $quantity }}</p>
				@else
					<div class="added" style="font-size: 2em; color: #59b210;">
						<i class="fa fa-check"></i>
						Producto Agregado
					</div>
				@endif
				<div class="row cart-item">
					
	                <div class="col-xs-12 col-sm-2">
	                    <a href="#" class="thumb-holder">
	                        <img class="lazy" alt="{{ $product->name }}" src="{{ asset('images/products/73x73/'.$product->images->first()->name) }}" />
	                    </a>
	                </div>

	                <div class="col-xs-12 col-sm-5 ">
	                    <div class="title">
	                        <a href="/{{ $product->slug }}">{{ $product->name }}</a>
	                    </div>
	                    <div class="brand">{{ $product->brand->name }}</div>
	                </div> 
	                <div class="col-xs-12 col-sm-1">
	                    <div class="price">
	                        ${{ number_format($cartProduct->sale_price) }}
	                    </div>
	                </div>
	                <div class="col-xs-12 col-sm-2">
                    	<a id="addto-cart" href="/carrito" class="le-button">ir al carrito</a>
                	</div> 
					<div class="col-xs-12 col-sm-2">
                    	<a id="addto-cart" href="/pagar" class="le-button">realizar pago</a>
                	</div> 
					
	            </div>




	        </div>   
		</div>
	</section>
	@include('widget.recently-viewed')
	@include('widget.top-brands')
	@include('footer.footer')
@stop
