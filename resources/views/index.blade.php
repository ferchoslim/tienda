@extends('layout.master')
@section('title', 'Tienda de Tecnologia')
@section('content')
@include('header.top-bar')
@include('header.header')
@include('home.home')
@include('widget.tabs-featured-newarrived')
@include('widget.bestseller')
@include('widget.recently-viewed')
@include('widget.top-brands')
@include('footer.footer')
@stop
