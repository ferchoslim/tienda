@extends('layout.master')
@section('title', 'Carrito de Compras')
@section('content')
	@include('header.top-bar')
  	@include('header.header')
	<section id="cart-page">
		<div class="container">
			@if ($priceChanged || $quantityChanged || $productDeleted)
				<br>
				<div class="alert alert-success" role="alert">
					<ul>
					@if ($priceChanged)
						<li>El Precio de Algunos Productos a Cambiado, Se a Ajustado el Nuevo Precio.</li>
					@endif
					@if ($productDeleted)
						<li>Algunos Productos se eliminaron por existencias insuficientes.</li>
					@endif
					@if ($quantityChanged)
						<li>La Cantidad Dispobinle de Algunos Productos a Cambiado, Se a Ajustado la Nueva Cantidad.</li>
					@endif
					</ul>
				</div>
			@endif
			<form method="post" id="cart-form">
			{{ csrf_field() }}
			<input type="hidden" name="product_delete" id="product-delete" value="">
			@if ($cart && sizeof($cart->products) != 0)
			<form id="cart-products-form" method="post">
			<div class="items-holder" style="display: flex; flex-direction: row; justify-content: flex-end;">
				<!--<div class="col-xs-12 col-md-6">-->
					<input type="hidden" name="update" value="true">
					<input type="submit" class="le-button" id="update-qty" value="actualizar cantidades">
					<span>&nbsp;</span>
					<a class="le-button" href="/pagar">Realizar Pago</a>
				<!--</div>-->
			</div>
			<div class="col-xs-12 col-md-9 items-holder no-margin">
				{{ csrf_field() }}
				<?php $p=0; ?>
	            @foreach($cart->products as $product)
	            <?php $p++; ?>

	            <input type="hidden" name="id{{ $p }}" value="{{ $product->id }}" />
	            <div class="row no-margin cart-item">
	                <div class="col-xs-12 col-sm-2 no-margin">
	                    <a href="{{ $product->product->slug }}" class="thumb-holder">
	                        <img class="lazy" alt="{{ $product->product->name }}" src="{{ asset('images/products/194x143/'.$product->product->images->first()->name) }}" />
	                    </a>
	                </div>
	                <div class="col-xs-12 col-sm-5 ">
	                    <div class="title">
	                        <a href="{{ $product->product->slug }}">{{ $product->product->name }}</a>
	                    </div>
	                    <div class="brand">{{ $product->product->brand->name }}</div>
	                </div> 
	                <div class="col-xs-12 col-sm-3 no-margin">
	                    <div class="quantity">
	                        <div class="le-quantity">
	                            <a class="minus" href="#reduce"></a>
	                            <input name="quantity{{ $p }}" class="product-quantity" type="text" value="{{ $product->quantity }}" />
	                            <input type="hidden" value="{{ $product->product->lot->quantity }}" />
	                            <a class="plus" href="#add"></a>
	                        </div>
	                    </div>

	                </div> 

	                <div class="col-xs-12 col-sm-2 no-margin">
	                    <div class="price">
	                        ${{ number_format($product->sale_price) }}
	                    </div>
	                    <a class="close-btn cart-product-delete" product-id="{{ $product->id }}" href="javascript:void(0);" ></a>
	                </div>
	            </div><!-- /.cart-item -->
				@endforeach
				
	        </div>
	        </form>
	        @else
	        	<div style="font-size: 2em; ">
					<i class="fa fa-shopping-cart"></i>
					Tu Carrito de Compras esta Vacio.
				</div>
	        @endif
	        </form>
		</div>
	</section>
	@include('widget.recently-viewed')
	@include('widget.top-brands')
	@include('footer.footer')
@stop
