@extends('admin.layout.master')
@section('title', 'Administrador | Lista de Productos')
@section('content')
@include('admin.header')
@include('admin.side-menu')
<section id="content_wrapper" class="animated fadeIn" v-cloak>
	<div class="panel heading-border panel-dark">
		<div class="panel-heading">
			<span class="panel-title hidden-xs">Lista de Productos</span>
		</div>
		<div class="panel-body p20 admin-form theme-primary">
			<div class="table-responsive of-y-a">
				<table class="table admin-form theme-warning tc-checkbox-1 fs13">
					<thead>
						<tr class="bg-light">
							<th class="text-center">ID</th>
							<th class="text-center">EAN/UPS</th>
							<th>Imagen</th>
							<th>Nombre</th>
							<th>Precio Compra</th>
							<th>Precio Venta</th>
							<th>Cantidad</th>
							<th>Descuento</th>
							<th class="text-right">Operaciones</th>
						</tr>
					</thead>
					<tbody>
						@foreach($products as $product)
						<tr>
							<td class="text-center">{{ $product->id }}</td>
							<td class="text-center">{{ $product->code }}</td>
							<td class="w100">
								<a class="image-zoom" 
						        @if(file_exists(public_path().'/images/products/1299x975/'.$product->images->first()->name))
						        href="{{ URL::asset('images/products/1299x975/'.$product->images->first()->name) }}"
						        @else
						        href="{{ URL::asset('images/products/433x325/'.$product->images->first()->name) }}"
						        @endif
						          >
									<img 
										src="{{ asset('images/products/67x60/'.$product->images->first()->name) }}" 
										class="img-responsive mw40 ib mr10">
								</a>
							</td>
							<td><a href="{{ Request::root() }}/{{ $product->slug }}" target="_blank">{{ $product->name }}</a></td>
							<td>${{ number_format($product->lot->purchase_price) }}</td>
							<td>${{ number_format($product->lot->sale_price) }}</td>
							<td>{{ number_format($product->lot->quantity) }}</td>
							<td>
								@if(isset($product->Discount->percent))
								{{ $product->Discount->percent }}%
								@else
								Sin Descuento
								@endif
							</td>
							<td class="text-right">
								<div class="btn-group text-right">
									<button type="button" id="product-button-{{ $product->id }}" data-toggle="dropdown" aria-expanded="false" class="
									btn
									@if($product->active == 1)
										btn-success
									@else
										btn-danger
									@endif
									br2 btn-xs fs12 dropdown-toggle">Opciones<span class="caret ml15"></span></button>
									<ul role="menu" class="dropdown-menu">
										<li><a href="/admin/product/new/{{ $product->id }}">Editar</a></li>
										<li><a href="#">Descuento</a></li>
										<li class="divider"></li>
										<li><a href="#" id="product-turn-{{ $product->id }}" @@click="productTurn({{ $product->id }})">
										@if($product->active == 1)
											Desactivar
										@else
											Activar
										@endif
										</a></li>
									</ul>
								</div>
							</td>
						</tr>
						@endforeach
					</tbody>
				</table>
				<div class="pagination-holder">
					<div class="row">
						<div class="col-xs-12 col-sm-6 text-left">
							{!! $products->links() !!}
						</div>
						<div class="col-xs-12 col-sm-6">
							<div class="result-counter">
								Página {{ $products->currentPage() }}-{{ $products->lastPage() }} de {{ $products->total() }} resultados.
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
@stop
@section('script')
<script>
	new Vue({
		el: '#content_wrapper',
		data: {
			token: '{!! csrf_token() !!}',
			actives: [
			@foreach($products as $product)
			 { id: {{ $product->id }}, active: {{ $product->active }} },
			@endforeach
			]
		},
		mounted() {
			$('.image-zoom').magnificPopup({
			    type: 'image',
			    closeOnContentClick: true,
			    closeBtnInside: false,
			    fixedContentPos: true,
			    mainClass: 'mfp-no-margins mfp-with-zoom', // class to remove default margin from left and right side
			    image: {
			      verticalFit: true
			    },
			    zoom: {
			      enabled: true,
			      duration: 300 // don't foget to change the duration also in CSS
			    }
			});
		},
		methods: {
			productTurn(id) {
				$.post('/admin/product/turn', { _token: this.token, id: id })
					.done(function(response) {
						switch (response.status) {
							case 'SUCCESS':
								var product = response.product;
								if (product.active == 0) {
									toastr.success('Producto Desactivado correctamente.');
									$('#product-button-'+product.id).removeClass('btn-success').addClass('btn-danger');
								}
								else {
									toastr.success('Producto Activado correctamente.');			
									$('#product-button-'+product.id).removeClass('btn-danger').addClass('btn-success');
								}
								$('#product-turn-'+product.id).text((product.active == 1) ? 'Desactivar' : 'Activar');
								//$('#product-button-'+product.id).text((product.active == 1) ? 'btn-success' : 'btn-danger');

							break;
							case 'VALIDATION_ERROR':
								toastr.error('ERROR: Faltan parametros para realizar la operación.');
							break;
						}
					})
					.fail(function() {
						toastr.error('ERROR: Fallo al desactivar el producto.');
					})
			}
		}
	});
</script>
@stop