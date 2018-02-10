@extends('admin.layout.master')
@section('title', 'Administrador | Transferencias de Productos')
@section('content')
	@include('admin.header')
	@include('admin.side-menu')
	<section id="content_wrapper" class="animated fadeIn" v-cloak>
		<div class="panel heading-border panel-dark">
			<div class="panel-heading">
				<span class="panel-title hidden-xs">Transferencias de Productos</span>
				<ul class="nav panel-tabs-border panel-tabs">
						<li class="active">
							<a href="#tab1" data-toggle="tab">Codigo</a>
						</li>
						<li>
							<a href="#tab2" data-toggle="tab">Serial</a>
						</li>
					</ul>
			</div>
			<div class="panel-body p20 admin-form theme-primary">
				<div class="tab-content">
					<div class="tab-pane active" id="tab1">
						<div class="section">
							<input-text 
								id="code"
								v-model="code" 
								name="code" 
								placeholder="Código de Producto" 
								tooltip="Código de barras del producto (UPC/EAN) ó Código Generado" 
								icon="fa fa-barcode"
								v-on:enter="addCode">
							</input-text>
						</div>
						<div class="section">
							<input-text 
								id="quantity"
								v-model="quantity" 
								name="quantity" 
								placeholder="Cantidad" 
								tooltip="Cantidad de Productos que seran Transferidos" 
								icon="fa fa-th">
							</input-text>
						</div>
						<div class="section">
							<select2 id="id_warehouse" name="id_warehouse" v-model="id_warehouse" placeholder="Bodegas" :options="warehouses"></select2>
						</div>
					</div>
					<div class="tab-pane" id="tab2">
					tab2
					</div>
				</div>
			</div>
		</div>
	</section>
		<!--********************************INPUT-TEXT TEMPLATE****************************************-->
	<script type="text/x-template" id="input_text">
		<label class="field prepend-icon">
			<input 
				v-on:keyup.enter="onEnter" 
				v-on:input="onInput" 
				:id="id" 
				type="text" 
				:value.trim="value" 
				:name="name" 
				:placeholder="placeholder"
				class="gui-input" 
				maxlength="255">
			<b class="tooltip tip-left" v-if="tooltip">
			<em>@{{tooltip}}</em>
			</b>
			<label class="field-icon"><i :class="icon"></i></label>
		</label>
	</script>
	<!--********************************INPUT-TEXT TEMPLATE END************************************-->
	<!--********************************SELECT2 TEMPLATE********************************************-->
	<script type="text/x-template" id="select2">
		<select :class="name" :id="id" :name="name">
			<option></option>
		</select>
	</script>
	<!--********************************SELECT2 TEMPLATE END*****************************************-->
@stop
@section('script')
<script>
	Vue.component('input-text', {
		template: '#input_text',
		props: ['name', 'placeholder', 'tooltip', 'icon', 'value', 'id'],
		methods: {
			onInput(event) {
				this.$emit('input', event.target.value);
			},
			onEnter(event) {
				this.$emit('enter');
			}
		}
	});
	Vue.component('select2', {
		template: '#select2',
		props: ['id', 'name', 'value', 'options', 'placeholder', 'clean'],
		mounted: function() {
			var cm = this;
			$(this.$el).select2({
				placeholder: this.placeholder,
				data: this.options
			}).on('change', function(event) {
				cm.$emit('input', this.value);
			});
		},
		watch: {
			options: function() {
				$(this.$el).empty();
				if (!this.clean) {
					$(this.$el).append('<option></option>');
				}
				$(this.$el).select2({
					placeholder: this.placeholder,
					data: this.options  
				});
				if (this.clean) {
					$(this.$el).trigger('change');
				}
			}	
		}
	});
	new Vue({
		el: '#content_wrapper'
	});
</script>
@stop