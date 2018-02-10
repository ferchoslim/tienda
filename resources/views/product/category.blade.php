@extends('layout.master')
@section('title', 'Tienda de Tecnologia')
@section('content')
	@include('header.top-bar')
	@include('header.header-two')
	@include('product.product-grid')
	@include('footer.footer')
@stop
