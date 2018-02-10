@extends('layout.master')
@section('title', 'Pago de Compra')
@section('content')
	@include('header.top-bar')
  	@include('header.header')
    <div class="container">
    	<div class="col-xs-12 col-md-8">
	    	<div class="border h1 type-{{ $response->data->x_cod_response }}">
	    		Transacción {{ $response->data->x_response }}
	    	</div>	
	    	<div class="table-responsive">
				<table class="table table-bordered">
					<tr>
						<td><strong>Referencia</strong></td>
						<td>{{ $response->data->x_id_invoice }}</td>
					</tr>
					<tr>
						<td><strong>Fecha</strong></td>
						<td>{{ $response->data->x_transaction_date }}</td>
					</tr>
					<tr>
						<td><strong>Respuesta</strong></td>
						<td>{{ $response->data->x_response }}</td>
					</tr>
					<tr>
						<td><strong>Motivo</strong></td>
						<td>{{ $response->data->x_response_reason_text }}</td>
					</tr>
					<tr>
						<td><strong>Banco</strong></td>
						<td>{{ $response->data->x_bank_name }}</td>
					</tr>
					<tr>
						<td><strong>Transacción Id</strong></td>
						<td>{{ $response->data->x_transaction_id }}</td>
					</tr>
					<tr>
						<td><strong>Total</strong></td>
						<td>${{ number_format($response->data->x_amount) }}</td>
					</tr>
				</table>
			</div>
			@if ($response->data->x_cod_response == 2 || $response->data->x_cod_response == 4)
				<a href="/checkout" class="le-button">volver</a>
			@else
				<a href="/" class="le-button">ir a inicio</a>
			@endif
		</div>
    </div>
	@include('widget.recently-viewed')
	@include('widget.top-brands')
	@include('footer.footer')
@stop
