@extends('layout.master')
@section('title', 'Pago de Compra')
@section('content')
	@include('header.top-bar')
  	@include('header.header')
    <div class="container">
    	<section id="checkout-page">
			@forelse($invoices as $invoice) 
				<section id="your-order">
		    		<h2 class="border h1">Compra</h2>
		    		<div class="brand">Factura #{{ $invoice->id }}</div>
		    		<div class="brand">Fecha: {{ $invoice->created_at }}</div>
		    		<?php $total = 0; ?>
					@foreach($invoice->products as $product)
			    		<div class="row no-margin order-item">
			                <div class="col-xs-12 col-sm-1 no-margin">
			                    <a href="javascript:void(0);" class="qty">{{ $product->quantity }} x</a>
			                </div>
			                <div class="col-xs-12 col-sm-2 no-margin">
			                    <a href="{{ $product->product->slug }}" class="thumb-holder">
			                        <img class="lazy" alt="{{ $product->product->name }}" 
			                        src="{{ asset('images/products/73x73/'.$product->product->images->first()->name) }}" />
			                    </a>
			                </div>
			                <div class="col-xs-12 col-sm-7 ">
			                    <div class="title"><a href="{{ $product->product->slug }}">{{ $product->product->name }}</a></div>
			                    <div class="brand">{{ $product->product->brand->name }}</div>
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
			@empty
				<div style="font-size: 2em; ">
					Aun no realizas una compra, Que Esperas!
				</div>
			@endforelse
		</section>
    </div>
	@include('widget.recently-viewed')
	@include('widget.top-brands')
	@include('footer.footer')
@stop
