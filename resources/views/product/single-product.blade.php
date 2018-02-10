@extends('layout.master')
@section('title', 'Tienda de Tecnologia')
@section('content')
@include('header.top-bar')
@include('header.header-two')
<div id="single-product">
	<div class="container">
	@include('product.single-product-gallery')
	@include('product.single-product-detail')     
	</div>
</div>
@include('product.single-product-tab')  
@include('widget.recently-viewed')
@include('footer.footer')
@stop
