@extends('admin.layout.master')
@section('title', 'Administrador | Nuevo Producto')
@section('content')
	@include('admin.header')
	@include('admin.side-menu')
  <section id="content_wrapper" v-cloak>
		<section id="content" class="table-layout animated fadeIn">
			<form id="form-new-product">
				<div class="panel heading-border panel-dark">
					<div class="panel-heading">
						<span class="panel-title hidden-xs">Nuevo Producto</span>
						<ul class="nav panel-tabs-border panel-tabs">
							<li class="active">
								<a href="#tab1" data-toggle="tab" id="info_tab">Información</a>
							</li>
							<li>
								<a href="#tab2" data-toggle="tab" id="attr_tab">Atributos</a>
							</li>
							<li>
								<a href="#tab3" data-toggle="tab" id="cat_tab">Categorías</a>
							</li>
						</ul>
					</div><!--panel-heading-->

					<div class="panel-body p20 admin-form theme-primary">
						<div class="tab-content">
							<!--TAB INFORMATION CONTENT-->
							<div id="tab1" class="tab-pane active"><!--active-->
								<div id="spy1" class="section-divider mb20"><span>Informacion General</span></div>
								<!--IMAGES-->
								<div class="col-md-6 col-lg-5">
									<div data-provides="fileupload" class="fileupload fileupload-new">
										<div class="fileupload-preview thumbnail">
										<img data-src="holder.js/433x325" alt="holder">
										</div>
										<div class="section row" id="image_field">
											<div class="col-xs-12">
											<span class="button btn-system btn-file btn-block">
												<span class="fileupload-new">Imagen Principal</span>
												<span class="fileupload-exists">Cambiar</span>
												<input type="file" accept="image/*" name="image1" id="image1">
											</span>
											</div>
										</div>
									</div>
									@php 
										//$imgCompoment = 5; 
									@endphp
									@for($i=2; $i <= $imgCompoment = 5; $i++)
										<div class="section row">
											<div class="col-xs-12">
												<div class="file-button">
													<label class="field prepend-icon append-button file">
											      <span class="button btn-primary">Seleccionar</span>
											      <input type="file" accept="image/*" name="image{{$i}}" onchange="document.getElementById('uploader{{$i}}').value = this.value;" class="gui-file">
											      <input id="uploader{{$i}}" type="text" placeholder="Seleccione una Imagen" class="gui-input">
											      <label class="field-icon"><i class="fa fa-upload"></i></label>
						                </label>
												</div>
											</div>
										</div>
									@endfor
								</div><!--images section-->
								<!--END IMAGES-->
								<div class="col-md-6 col-lg-7">
									<!--PRODUCT INFO-->
									<div class="section">
										<input-text 
											id="code"
											v-model="code" 
											name="code" 
											placeholder="Codigo UPC/EAN" 
											tooltip="Código de barras del producto (UPC/EAN), sera generado automáticamente si se deja en blanco" 
											icon="fa fa-barcode">
										</input-text>
									</div><!--codigo-->
									<div class="section row"><!--fabricante & referencia incio-->
										<div class="col-md-6">
											<a href="javascript:void()" v-on:click.prevent="mwAddBrand">+Nuevo Fabricante</a>
											<div id="brand_field">
												<select2 id="id_brand" name="id_brand" v-model="id_brand" :options="brands" placeholder="Fabricantes"></select2>
											</div>
										</div>
										<div class="col-md-6">
											<a href="javascript:void(0)" v-on:click.prevent="mwAddRef">+Nueva Referencia</a>
											<div id="reference_field">
											<select2 id="id_reference" name="id_reference" v-model="id_reference" :options="references" placeholder="Referencias" clean="true"></select2>
											</div>
										</div>
									</div><!--fabricante & referencia final-->
									<div class="section" id="name_field"><!--nombre producto inicia-->
										<input-text 
											id="name"
											v-model="name" 
											name="name" 
											placeholder="Nombre de Producto" 
											tooltip="Nombre del producto con las características más importantes. Ejemplo: Apple iPhone 7 Dorado 32GB" 
											icon="fa fa-tag">
										</input-text>
									</div><!--nombre producto fin-->
									<div class="section" id="supplier_field"><!--proveedor-->
										<select2 name="id_supplier" id="id_supplier" v-model="id_supplier" :options="suppliers" placeholder="Proveedores"></select2>
									</div><!--proveedor-->
									<div class="section row"><!--precios & cantidad-->
										<div class="col-md-4" id="purchase_price_field"><!--precio de compra-->
											<input-text 
												id="purchase_price"
												v-model="purchase_price" 
												name="purchase_price" 
												placeholder="Precio de Compra" 
												tooltip="Precio en el que se adquirió/compro el producto" 
												icon="fa fa-money">
											</input-text>
										</div><!--precio de compra-->
										<div class="col-md-4" id="sale_price_field"><!--precio de venta-->
											<input-text 
												id="sale_price"
												v-model="sale_price" 
												name="sale_price" 
												placeholder="Precio de Venta" 
												tooltip="Precio de venta final del producto" 
												icon="fa fa-usd">
											</input-text>
										</div><!--precio de venta-->
										<div class="col-md-4" id="quantity_field"><!--cantidad-->
											<input-text 
												id="quantity"
												v-model="quantity" 
												name="quantity" 
												placeholder="Cantidad" 
												icon="fa fa-th">
											</input-text>
										</div><!--cantidad-->
									</div><!--precios & cantidad-->
									<div class="section"><!--descripcion corta-->
										<label class="field prepend-icon">
											<textarea id="short_description" name="short_description" name="comment" placeholder="Descripción Corta del Producto" class="gui-textarea br-light bg-light" v-model="short_description"></textarea>
											<label for="comment" class="field-icon"><i class="fa fa-comments"></i></label>
										</label>
									</div><!--descripcion corta-->
									<div class="section">
										<label class="field prepend-icon">
											<textarea id="full_description" name="full_description" name="comment" placeholder="Descripción Completa del Producto" class="gui-textarea br-light bg-light" v-model="full_description"></textarea>
											<label for="comment" class="field-icon"><i class="fa fa-comments"></i></label>
										</label>
									</div>
									<div class="section">
										<label class="switch ib switch-primary mt10">
                    <input id="product_actived" type="checkbox" name="product_actived" checked>
                    <label for="product_actived" data-on="SI" data-off="NO"></label> <span>Producto Activado</span>
                  </label>
									</div>
								</div><!--END PRODUCT INFO-->	
						</div><!--tab1-->
						<div id="tab2" class="tab-pane"><!--tab2-->
							<div id="spy1" class="section-divider mb20"><span>Estado del Producto & Tipo</span></div>
							<div class="section row"><!--tipos de producto-->
								<div id="state_field" class="col-md-6">
									<span>&nbsp;</span>
									<select2 id="id_state" name="id_state" v-model="id_state" :options="state" placeholder="Estado">
									</select2>
								</div>
								<div id="type_field" class="col-md-6">
									<a href="javascript:void()" v-on:click.prevent="mwAddType">+Nuevo Tipo</a>
									<select2 id="id_type" name="id_type" v-model="id_type" :options="types" placeholder="Tipos">
									</select2>
								</div>
   						</div><!--estado del producto-->
   						<div id="spy1" class="section-divider mb20"><span>Atributos del Producto</span></div>
   						<a href="javascript:void(0)" v-on:click.prevent="mwAddAttr">+Nuevo Atributo</a>
							<div class="section row">
								<div class="col-md-6">
									<select2 id="id_attr" name="id_attr" v-model="id_attr" :options="attributes" placeholder="Atributos">
									</select2>
								</div><!--atributo-->
								<div class="col-md-6">
									<input-text 
										id="attr_value"
										v-on:enter="addAttr"
										v-model="attr_value" 
										name="attr_value" 
										placeholder="Valor de Atributo" 
										icon="fa fa-key">
									</input-text>
								</div><!--valor-->
							</div><!--atributo & valor-->
							<div class="section text-right">
								<button type="button" class="btn btn-primary btn-xs" v-on:click.prevent="addAttr">Agregar</button>
							</div><!--boton guardar-->
							<div id="spy1" class="section-divider mb20"><span>Lista de Atributos Seleccionados</span></div>
							<div class="panel">
								<div class="panel-menu">
									<div class="table-responsive of-y-a">
										<table class="table attr-table">
											<thead>
												<tr class="bg-dark">
													<th>Atributo</th>
													<th>Valor</th>
													<th class="text-right">Opciones</th>
												</tr>
											</thead>
											<tbody><!--lista de atributos-->
												<tr v-for="attr in attr_list" class="attr_item" :id="'pos'+attr.pos">
													<td><b><span class="attr_name">@{{ attr.text }}</span></b></td>
													<td><b><span class="attr_value">@{{ attr.value }}</span></b></td>
													<td>
														<div class="text-right">
															<button v-on:click.prevent="removeAttr(attr.id)" type="button" class="btn btn-danger btn-xs">Quitar</button>
														</div>
													</td>
												</tr>
											</tbody><!--lista de atributos-->
										</table>
									</div>
								</div>
							</div><!--panel-->
						</div><!--tab2-->
						<div id="tab3" class="tab-pane">
							<div id="spy1" class="section-divider mb20"><span>Categorías del Producto</span></div>
							<div class="section row">
								<div class="col-md-6">
									<a href="javascript:void(0)" v-on:click.prevent="mwAddCategory">+Nueva Categoría</a>
									<select2 id="id_category" name="id_category" v-model="id_category" :options="categories" placeholder="Categorías">
									</select2>
								</div><!--categoria-->
								<div class="col-md-6">
									<a href="javascript:void(0)" v-on:click.prevent="mwAddSubCategory">+Nueva SubCategoría</a>
									<select2 id="id_subcategory" name="id_subcategory" v-model="id_subcategory" :options="subcategories" placeholder="SubCategorías">
									</select2>
								</div><!--sub-categoria-->
							</div><!--categoria & sub-categoria-->
							<div class="section text-right">
								<button v-on:click="addCategoryProduct" type="button" class="btn btn-xs btn-primary" id="btn-add-category">Agregar</button>
							</div><!--boton agregar-->
							<div id="spy1" class="section-divider mb20"><span>Lista de Categorías y Rutas</span></div>
							<div class="panel">
								<div class="panel-menu">
									<div class="table-responsive of-y-a">
										<input type="hidden" name="cat_obj" id="cat_obj" value="">
										<table class="table category-table">
											<thead>
												<tr class="bg-dark">
													<th>Categoría</th>
													<th>SubCategoría</th>
													<th>Ruta</th>
													<th class="text-right">Opciones</th>
												</tr>
											</thead>
										<tbody>	
											<tr class="cat_item" v-for="category_item in product_category_list" :id="'cpos'+category_item.id">
												<td><b><span class="cat_parent">@{{ category_item.category }}</span></b></td>
												<td><b><span class="cat_child">@{{ category_item.subcategory }}</span></b></td>
												<td><b><span class="cat_child">@{{ category_item.route }}</span></b></td>
												<td>
													<div class="text-right">
														<button type="button" class="btn btn-danger btn-xs" v-on:click.prevent="removeCat(category_item.id)">Quitar</button>
													</div>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div><!--panel-->
					</div><!--tab3-->
				</div><!--tab-content-->
				<div class="section text-right">
					<div class="col-md-12">
						<button v-on:click.prevent="saveProduct" type="button" class="btn btn-primary ladda-button" data-style="expand-left" id="btn-save">
							<span class="ladda-label">Guardar</span>
						</button>
						<button type="button" v-on:click="formReset" class="btn btn-danger" id="btn-reset">Resetear</button>
					</div>
				</div>
			</div><!--panel-body-->
		</div><!--panel-->
			<!-- recent orders table-->
		<input type="hidden" v-model="attr_list" name="attr_list">
		<input type="hidden" v-model="product_category_list" name="product_category_list">
		@if(isset($product))
		<input type="hidden" name="editing" value="true">
		<input type="hidden" name="id_product" value="{{ $product->id }}">
		@endif
		{{ csrf_field() }}
	</form>
		<!--MODAL MODAL NUEVO-->
		<!--NUEVA REFERENCIA-->
		<modal-window v-on:save="saveReference" id="modal-new-reference" title="Nueva Referencia" icon="fa fa-plus-square" name="form-new-ref">
			<select2 id="mw_id_brand" name="id_brand" v-model="mw_id_brand" :options="brands" placeholder="Fabricantes" slot="1">
			</select2>
			<input-text
				slot="2"
				id="mw_new_ref_name"
				v-model="mw_new_ref_name"
				name="name"
				placeholder="Nombre de Rerencia del Producto"
				tooltip="Ejemplo: iPhone 7, SM-G935F"
				icon="glyphicon glyphicon-screenshot">
			</input-text>
		</modal-window>
		<!--NUEVA MARCA-->
		<modal-window v-on:save="saveBrand" id="modal-new-brand" title="Nuevo Fabricante" icon="fa fa-plus-square" name="form-new-brand">
			<input-text
				slot="1"
				id="mw_new_brand_name"
				v-on:enter="saveBrand(true)"
				v-model="mw_new_brand_name"
				name="name"
				placeholder="Nombre de Fabricante"
				tooltip="Ejemplo: Samsung, Apple, Alcatel..."
				icon="glyphicon glyphicon-tag">
			</input-text>
			<div class="file-button" slot="2">
				<label class="field prepend-icon append-button file">
					<span class="button btn-primary">Seleccionar</span>
					<input type="file" accept="image/*" name="image" onchange="document.getElementById('new_brand_image').value = this.value;" class="gui-file">
					<input id="new_brand_image" type="text" placeholder="Logo del Fabricante" class="gui-input">
					<label class="field-icon"><i class="fa fa-upload"></i></label>
				</label>
			</div>
		</modal-window>
		<!--NUEVO TIPO DE PRODUCTO-->
		<modal-window v-on:save="saveType" id="modal-new-type" title="Nuevo Tipo de Producto" icon="fa fa-plus-square" name="form-new-brand">
			<input-text
				slot="1"
				v-on:enter="saveType"
				id="mw_new_type_name"
				v-model="mw_new_type_name"
				name="mw_type_name"
				placeholder="Nombre de Tipo de Producto"
				tooltip="Ejemplo: telefono, perfume, protector, parlante..."
				icon="glyphicon glyphicon-screenshot">
			</input-text>
		</modal-window>
		<!--NUEVO ATRIBUTO-->
		<modal-window v-on:save="saveAttr" id="modal-new-attr" title="Nuevo Atributo" icon="fa fa-plus-square" name="modal-new-attr">
			<input-text
				slot="1"
				v-on:enter="saveAttr"
				id="mw_new_attr_name"
				v-model="mw_new_attr_name"
				name="mw_attr_name"
				placeholder="Nombre de Atributo"
				tooltip="Ejemplo: Color, Capacidad, Material, Tamaño..."
				icon="glyphicon glyphicon-pushpin">
			</input-text>
		</modal-window>
		<!--NUEVA CATEGORIA-->
		<modal-window v-on:save="saveCategory" id="modal-new-category" title="Nueva Categoría" icon="fa fa-plus-square" name="modal-new-category">
			<input-text
				slot="1"
				id="mw_category_name"
				v-model="mw_new_category_name"
				name="mw_category_name"
				placeholder="Nombre de la Categoría"
				tooltip="Categoría en donde se almacenara el producto. Ejemplo: Teléfonos, Promociones, Perfumes de Hombre..."
				icon="fa fa-list">
			</input-text>
			<input-text
				slot="2"
				id="mw_category_name"
				v-model="mw_new_category_route"
				name="mw_category_name"
				placeholder="Ruta"
				tooltip="Ruta o URL Amigable de la categoria, esto se completara automáticamente pero puede cambiarlo, tenga en cuenta que las Rutas no pueden tener espacios y todo debe ir en minúsculas. Ejemplo: promiciones-del-dia"
				icon="fa fa-location-arrow">
			</input-text>
		</modal-window>
		<!--NUEVA SUBCATEGORIA-->
		<modal-window v-on:save="saveSubCategory" id="modal-new-subcategory" title="Nueva SubCategoría" icon="fa fa-plus-square" name="modal-new-subcategory">
			<select2 id="mw_id_category" name="mw_id_category" v-model="mw_id_category" :options="categories" placeholder="Categorías" slot="1">
			</select2>
			<input-text
				slot="2"
				id="mw_subcategory_name"
				v-model="mw_new_subcategory_name"
				name="mw_subcategory_name"
				placeholder="Nombre de la SubCategoría"
				tooltip="SubCategoría en donde se almacenara el producto. Ejemplo: Apple, Samsung, Carolina Herrera..."
				icon="fa fa-list">
			</input-text>
			<input-text
				slot="3"
				id="mw_subcategory_name"
				v-model="mw_new_subcategory_route"
				name="mw_subcategory_name"
				placeholder="Ruta"
				tooltip="Ruta o URL Amigable de la subcategoria, esto se completara automáticamente pero puede cambiarlo, tenga en cuenta que las Rutas no pueden tener espacios y todo debe ir en minúsculas. Ejemplo: telefonos-en-promocion"
				icon="fa fa-location-arrow">
			</input-text>
		</modal-window>
	</section>
</section>
<!--********************************INPUT-TEXT TEMPLATE****************************************-->
<script type="text/x-template" id="input_text">
	<label class="field prepend-icon">
		<input v-on:keyup.enter="onEnter" v-on:input="onInput" :id="id" type="text" :value.trim="value" :name="name" :placeholder="placeholder" class="gui-input" maxlength="255">
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
<!--*******************************MODAL WINDOW**************************************************-->
<script type="text/x-template" id="modal-window">
	<div :id="id" class="popup-basic admin-form theme-primary mfp-with-anim mfp-hide">
			<div class="panel panel-system">
				<div class="panel-heading">
					<span class="panel-title">
						<i :class="icon"></i>
						@{{ title }}
					</span>
				</div>
				<form :id="name" onsubmit="return false;">
					<div class="panel-body p25">
						<div class="section">
							<slot name="1"></slot>
						</div>
						<div class="section">
							<slot name="2"></slot>
						</div>
						<div class="section">
							<slot name="3"></slot>
						</div>
					</div>
					<div class="panel-footer text-right">
						<button v-on:click.prevent="save()" type="button" :id="id+'-btn-save'" class="btn btn-xs btn-primary ladda-button" data-style="expand-left">
							<span class="ladda-label">GUARDAR</span>
						</button>
						<button v-on:click.prevent="save(true)" type="button" :id="id+'-btn-save-close'" class="btn btn-xs btn-primary ladda-button" data-style="expand-left">
							<span class="ladda-label">GUARDAR & CERRAR</span>
						</button>
					</div>
					{{ csrf_field() }}
				</form>
			</div>
	</div>
</script>
<!--*******************************MODAL WINDOW END**********************************************-->
@stop
@section('script')
<script>
	//$(function() {
		Vue.component('modal-window', {
			template: '#modal-window',
			props: ['id', 'icon', 'title', 'name'],
			methods: {
				save(close) {
					this.$emit('save', close);
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
		var page = new Vue({
			el: "#content_wrapper",
			data: {
				state: [
					{ id: 'new', text: 'Nuevo' },
					{ id: 'used', text: 'Usado' },
					{ id: 'refurbished', text: 'Remanofacturado'}  
				],
				id_state: 'new',
				@if(isset($product))
				editing: true,
				@endif
				mw_new_category_name: null, 
				mw_new_category_route: null,
				mw_id_category: null,
				mw_new_subcategory_name: null,
				mw_new_subcategory_route: null,
				token: '{{ csrf_token() }}',
				code: @if(isset($product)) '{{ $product->code }}' @else null @endif, 
				id_brand: null, 
				id_reference: null, 
				name: '', 
				id_supplier: null, 
				purchase_price: null, 
				sale_price: null, 
				quantity: null,
				short_description: null, 
				full_description: null,
				brands: [
				@foreach($brands as $brand)
					{ id:{{ $brand->id }}, text:'{{ $brand->name }}' },
				@endforeach
				],
				references: [],
				suppliers: [
				@foreach($suppliers as $supplier)
					{ id:{{ $supplier->id }}, text:'{{ $supplier->org_name }}' },
				@endforeach
				],
				id_supplier: null,
				brand_selected_name: null,
				reference_selected_name: null,
				id_type: null,
				type_selected: null,
				types: [
				@foreach($types as $type)
					{ id:{{ $type->id }}, text:'{{ $type->name }}' },
				@endforeach
				],
				attributes: [
				@foreach($attributes as $attribute)
					{ id:{{ $attribute->id }}, text:'{{ $attribute->name }}' },
				@endforeach
				],
				id_attr: null,
				attr_list: [],
				attr_value: null,
				categories: [
				@foreach($categories as $category)
					@if ($category->id_parent == 0)
						{ id:{{ $category->id }}, text:'{{ $category->name }}', route:'{{ $category->slug }}' },
					@endif
				@endforeach
				],
				id_category: null,
				category_name: null,
				subcategory_name: null,
				route: null,
				id_subcategory: null,
				subcategories: [],
				product_category_list: [],
				mw_new_type_name: null,
				mw_new_attr_name: null,
				mw_new_brand_name: null,
				mw_new_brand_image: null,
				mw_new_ref_name: null,
				mw_id_brand: null,
				select_ref_after_refresh: null,
				ajax_open: false,
				set_name: true
			},
			mounted() {
				_this = this;
				$('#id_state').select2('val', 'new');
				toastr.options = {
					preventDuplicates: true,
					preventOpenDuplicates: true,
					positionClass: "toast-top-center",
					showMethod: "slideDown",
  					hideMethod: "slideUp"
				};
				if (this.code != null) {
					this.loadProductInfo(this.code);
				}
				$('#code').keyup(function(e) {
					if (e.which == 13) {
						_this.loadProductInfo(_this.code);
					}		
				});
				$('#product_actived').change(function() {
					_this.ActDeac();
				})
			},
			methods: {
				loadProductInfo(code) {
					_this = this;
					if (code) {
						$.post('/admin/product/get', { 
							_token: _this.token,
							code: code
						})
						.done(function(response) {
							_this.set_name = false;
							_this.id_brand = response.product.id_brand;
							setTimeout(function() {
								var checkAjax = setInterval(function() {
									if (_this.ajax_open == false) {
										_this.id_reference = response.product.id_reference;
										_this.name = response.product.name;
										setTimeout(function() {
											_this.set_name = true;
										}, 100);
										_this.id_supplier = response.product.lot.id_supplier;
										_this.purchase_price = response.product.lot.purchase_price;
										_this.sale_price = response.product.lot.sale_price;
										_this.quantity = response.product.lot.quantity;
										_this.short_description = response.product.short_description;
										_this.full_description = response.product.full_description;
										if (response.product.active == 0)
											_this.ActDeac();
										$('.fileupload-preview img').attr('src', '{{ asset('images/products/433x325') }}/'+response.product.get_images[0].name);
										$('#id_state').select2('val', response.product.lot.state);
										$('#id_type').select2('val', response.product.id_type);
										$.each(response.product.attributes, function(c, w) {
											$.each(_this.attributes, function(i, v) {
												if (w.id_attribute == v.id) {
													_this.attr_list.push({id: v.id, text: v.text , value: w.value, pos: _this.attr_list.length });
												}
											});
										});
										$.each(response.categories, function(i, v) {
											_this.product_category_list.push({
												id: i, 
												category: v.category_name, 
												id_category: v.id_category, 
												subcategory: v.subcategory_name,
												id_subcategory: v.id_subcategory,
												route: v.subcategory_slug
											});
										});
										clearInterval(checkAjax);
									}
								}, 1000);
							}, 500);
							//_this.id_reference = response.id_reference;
							//$('#id_brand').val(response.id_brand)
						})
						.fail(function() {
							toastr.error('ERROR: No se pudo Verificar el Codigo del Producto');
						});
					}
				},
				ActDeac() {
					if ($('#product_actived').attr('checked'))
						$('#product_actived').removeAttr('checked');
					else
						$('#product_actived').attr('checked', 'true');
				},
				formReset() {
					location.reload();
				},
				tab_one_check() {
					if (!$('#tab1').hasClass('active')) {
						toastr.info('Debe Completar los Campos de la Pestaña "Información"');
						this.animate($('#info_tab'));
					}
				},
				saveProduct() {
					if (!$('#image1').val() && !this.editing) {
						this.tab_one_check();
						this.animate($('#image_field'));
						return;
					}
					if (!this.id_brand) {
						this.tab_one_check();
						this.animate($('#brand_field'));
						return;
					}
					if (!this.id_reference) {
						this.tab_one_check();
						this.animate($('#reference_field'));
						return;
					}
					if (!$.trim(this.name)) {
						this.tab_one_check();
						this.animate($('#name_field'));
						return;
					}
					if (!this.id_supplier) {
						this.tab_one_check();
						this.animate($('#supplier_field'));
						return;
					}
					if (!this.purchase_price) {
						this.tab_one_check();
						this.animate($('#purchase_price_field'));
						return;
					}
					if (!this.sale_price) {
						this.tab_one_check();
						this.animate($('#sale_price_field'));
						return;
					}
					if (parseInt(this.purchase_price.replace(/[^0-9\.-]+/g,"")) > 
						parseInt(this.sale_price.replace(/[^0-9\.-]+/g,""))) {
						this.tab_one_check();
						toastr.info('El "Precio de Compra" No puede ser Mayor que el "Precio de Venta"');
						this.animate($('#purchase_price_field'));
						this.animate($('#sale_price_field'));
						return;
					}
					if (!parseInt(this.quantity)) {
						this.tab_one_check();
						this.animate($('#quantity_field'));
						return;
					}
					if (!this.id_type) {
						if (!$('#tab2').hasClass('active')) {
							toastr.info('Debe Completar los Campos de la Pestaña "Atributos"');
							this.animate($('#attr_tab'));
							return;
						}
						this.animate($('#type_field'));
						return;
					}
					if (!this.product_category_list.length) {
						if (!$('#tab3').hasClass('active')) {
							toastr.info('Debe Agregar las Categorías del Producto en la Pestaña "Categorías"');
							this.animate($('#cat_tab'));
							return;
						}
						toastr.info('Debe Agregar las Categorías del Producto');
						return;
					}
					var btn_save = Ladda.create(document.getElementById('btn-save'));
					btn_save.start();
					$.ajax({
						method: "POST",
						url: "/admin/product/save",
						data: new FormData($('#form-new-product')[0]),
						cache: false,
						dataType: "json",
						processData: false,
						contentType: false
					})
					.done(function(response) {
						btn_save.stop();
						if (response.status == 'CODE_EXISTS') {
							toastr.warning('Ya Existe un Producto Con el Mismo Codigo, El Codigo del Producto debe ser UNICO');
						}
						else if (response.status == 'NAME_EXISTS') {
							toastr.warning('Ya Existe un Producto Con el Mismo Nombre, El Nombre del Producto debe ser UNICO');
						}
						else if (response.status == 'ERROR') {
							toastr.error('ERROR: Guardar Nuevo Producto');
						}
						else {
							toastr.success('Producto Guardado Exitosamente');
						}
					})
					.fail(function(response) {
						btn_save.stop();
						toastr.error('ERROR: No se pudo estrablecer conexión con el servidor');
					});
				},
				mwAddRef() {
					_this = this;
					$.magnificPopup.open({
			      removalDelay: 500,
			      items: {
			        src: $('#modal-new-reference')
			      },
			      callbacks: {
			        beforeOpen: function (e) {
			          this.st.mainClass = 'mfp-flipInY';
			        }
			      },
			      midClick: true
			    });
			    setTimeout(function() {
			      _this.mw_new_ref_name = null;
			      $('#mw_id_brand').select2('val', _this.id_brand);
			    	$('#mw_new_ref_name').focus();
			    }, 100);
				},
				saveReference(close) {
					if (this.mw_id_brand != "" && $.trim(this.mw_new_ref_name)) {
						var btn_save = Ladda.create(document.getElementById('modal-new-reference-btn-save'));
						var btn_save_close = Ladda.create(document.getElementById('modal-new-reference-btn-save-close'));
						btn_save.start();
						btn_save_close.start();
						_this = this;
						$.post('/admin/reference/create', $('#form-new-ref').serialize())
						.done(function(response) {
							if (response.status == 'NEED_MORE_PARAMETERS') {
								toastr.info('Debe Completar Todos Los Campos');
							}
							else {
								if (_this.id_brand == _this.mw_id_brand) {
									if (response.status != 'EXISTS') {
										_this.references.push({
											id: response.id,
											text: response.name
										});
									}
									setTimeout(function() {
										$('#id_reference').select2('val', response.id);
									}, 100);
								}
								else {
									_this.select_ref_after_refresh = response.id;
									$('#id_brand').select2('val', _this.mw_id_brand);
								}
								_this.mw_new_ref_name = null;
								if (close == true) {
									$.magnificPopup.close();
								}
							}
							if (response.status == 'EXISTS') {
								toastr.info('Referencia Existente');
							}
							else {
								toastr.success('Referencia Guardada Exitosamente');
							}
							btn_save.stop();
							btn_save_close.stop();
						})
						.fail(function() {
							btn_save.stop();
							btn_save_close.stop();
							toastr.error('ERROR: Guardar Nueva Referencia');
						});
					}
					else {
						toastr.info('Debe Completar Todos Los Campos');
					}
				},
				mwAddBrand() {
					$.magnificPopup.open({
			      removalDelay: 500,
			      items: {
			        src: $('#modal-new-brand')
			      },
			      callbacks: {
			        beforeOpen: function (e) {
			          this.st.mainClass = 'mfp-flipInY';
			        }
			      },
			      midClick: true
			    });
			    this.mw_new_brand_name = null;
			    $('#new_brand_image').val('');
			    setTimeout(function() {
			    	$('#mw_new_brand_name').focus();
			    }, 100);
				},
				saveBrand(close) {
					if (this.mw_new_brand_name != null && $.trim(this.mw_new_brand_name) != '' && 
						$('#new_brand_image').val() != '') {
						_this = this;
						var btn_save = Ladda.create(document.getElementById('modal-new-brand-btn-save'));
						var btn_save_close = Ladda.create(document.getElementById('modal-new-brand-btn-save-close'));
						var exists = false;
						var id_exists = null;
						$.each(_this.brands, function(i, v) {
							if (_this.mw_new_brand_name == v.text) {
								exists = true;
							}
						});
						if (!exists) {
							btn_save.start();
							btn_save_close.start();
							$.ajax({
								method: "POST",
								url: "/admin/brand/create",
								data: new FormData($('#form-new-brand')[0]),
								cache: false,
								dataType: "json",
								processData: false,
								contentType: false
							}).done(function(response) {
								btn_save.stop();
								btn_save_close.stop();
						    if (response.status == 'NEED_MORE_PARAMETERS') {
						    	toastr.info('Debe Completar Todos Los Campos');
						    }
						    else {
						    	_this.mw_new_brand_name = null;
						    	$('#new_brand_image').val('');
						    	if (response.status != 'EXISTS') {
						    		_this.brands.push({
							    		id: response.id,
							    		text: response.name
							    	});
						    	}
						    	toastr.success('Fabricante Guardado Exitosamente');
						    	setTimeout(function() {
										$('#id_brand').select2('val', response.id);
						    	}, 100);
						    	if (close == true) {
										$.magnificPopup.close();
									}
						    }
						  }).fail(function(data) {
						  	btn_save.stop();
								btn_save_close.stop();
						    toastr.error('ERROR: Guardar Nuevo Fabricante');
						  });
						}
						else {
							toastr.info('Fabricante Existente');
						}
					}
					else {
						toastr.info('Debe Completar Todos Los Campos');
					}
				},
				mwAddAttr() {
					_this = this;
					$.magnificPopup.open({
			      removalDelay: 500,
			      items: {
			        src: $('#modal-new-attr')
			      },
			      callbacks: {
			        beforeOpen: function (e) {
			          this.st.mainClass = 'mfp-flipInY';
			        }
			      },
			      midClick: true
			    });
			    this.mw_new_attr_name = null;
			    setTimeout(function() {
			    	$('#mw_new_attr_name').focus();
			    }, 100);
				},
				saveAttr(close) {
					if (this.mw_new_attr_name != null && $.trim(this.mw_new_attr_name) != '') {
						_this = this;
						var btn_save = Ladda.create(document.getElementById('modal-new-attr-btn-save'));
						var btn_save_close = Ladda.create(document.getElementById('modal-new-attr-btn-save-close'));
						btn_save.start();
						btn_save_close.start();
						$.post('/admin/attribute/create', { 
							_token: _this.token,
							name: this.mw_new_attr_name
						})
						.done(function(response) {
							btn_save.stop();
							btn_save_close.stop();
							if (response.status == 'NEED_MORE_PARAMETERS') {
								toastr.info('Faltan Parametros');
							}
							else if (response.status == 'EXISTS') { 
								toastr.info('Atributo Existente');
								_this.mw_new_attr_name = null;
								_this.id_attr = response.id;
							}
							else {
								toastr.success('Atributo Creado Existosamente');
								_this.attributes.push({
									id: response.id,
									text: response.name
								});
								_this.mw_new_attr_name = null;
								setTimeout(function() {
									_this.id_attr = response.id;
								}, 100);
								$('#mw_new_attr_name').focus();
								if (close == true) {
									$.magnificPopup.close();
								}
							}
						})
						.fail(function() {
							btn_save.stop();
							btn_save_close.stop();
							toastr.error('ERROR: Guardar Nuevo Atributo');
						});
					}
					else {
						toastr.info('Debe Completar Todos Los Campos');
					}
				},
				mwAddType() {
					_this = this;
					$.magnificPopup.open({
			      removalDelay: 500,
			      items: {
			        src: $('#modal-new-type')
			      },
			      callbacks: {
			        beforeOpen: function (e) {
			          this.st.mainClass = 'mfp-flipInY';
			        }
			      },
			      midClick: true
			    });
			    this.mw_new_type_name = null;
			    setTimeout(function() {
			    	$('#mw_new_type_name').focus();
			    }, 100);
				},
				saveType(close) {
					if (this.mw_new_type_name != null && $.trim(this.mw_new_type_name) != '') {
						_this = this;
						var btn_save = Ladda.create(document.getElementById('modal-new-type-btn-save'));
						var btn_save_close = Ladda.create(document.getElementById('modal-new-type-btn-save-close'));
						btn_save.start();
						btn_save_close.start();
						$.post('/admin/type/create', { 
							_token: _this.token,
							name: this.mw_new_type_name
						})
						.done(function(response) {
							btn_save.stop();
							btn_save_close.stop();
							if (response.status == 'NEED_MORE_PARAMETERS')
								toastr.info('Faltan Parametros');
							else {
								if (response.status != 'EXISTS') {
									_this.types.push({
										id: response.id,
										text: response.name
									});
								}
								_this.mw_new_type_name = null;
								setTimeout(function() {
									_this.id_type = response.id;
								}, 100);
								$('#mw_new_type_name').focus();
								if (close == true) {
									$.magnificPopup.close();
								}
								if (response.status == 'EXISTS') {
									toastr.info('Tipo de Producto Existente');
								}
								if (response.status == 'SUCCESS') {
									toastr.success('Tipo de Producto Creado Existosamente');
								}
							}
						})
						.fail(function() {
							btn_save.stop();
							btn_save_close.stop();
							toastr.error('ERROR: Guardar Nuevo Tipo de Producto');
						});
					}
					else {
						toastr.info('Debe Completar Todos Los Campos');
					}
				},
				mwAddCategory() {
					$.magnificPopup.open({
			      removalDelay: 500,
			      items: {
			        src: $('#modal-new-category')
			      },
			      callbacks: {
			        beforeOpen: function (e) {
			          this.st.mainClass = 'mfp-flipInY';
			        }
			      },
			      midClick: true
			    });
			    this.mw_new_category_name = null;
					this.mw_new_category_route = null;
			    setTimeout(function() {
			    	$('#mw_category_name').focus();
			    }, 100);
				},
				saveCategory(close) {//hay un fallo al crear la nueva categoria, se manda la primera categoria ya agregada
					if (this.mw_new_category_name != null && this.mw_new_category_route != null &&
						$.trim(this.mw_new_category_name) != '' && $.trim(this.mw_new_category_route) != '') {
						_this = this;
						var btn_save = Ladda.create(document.getElementById('modal-new-category-btn-save'));
						var btn_save_close = Ladda.create(document.getElementById('modal-new-category-btn-save-close'));
						btn_save.start();
						btn_save_close.start();
						$.post('/admin/category/create', {
							_token: _this.token,
							name: _this.mw_new_category_name,
							slug: _this.mw_new_category_route
						})
						.done(function(response) {
							if (response.status != 'EXISTS') {
								_this.categories.push({
									id: response.id,
									text: response.name,
									route: response.slug
								});
							}
							setTimeout(function() {
								$('#id_category').select2('val', response.id);
							}, 100);
							$('#mw_category_name').focus();
							_this.mw_new_category_name = null;
							_this.mw_new_category_route = null;
							toastr.success('Categoría Creada Existosamente');
							btn_save.stop();
							btn_save_close.stop();
							if (close == true) {
								$.magnificPopup.close();
							}
						})
						.fail(function() {
							toastr.error('ERROR: Crear Nueva Categoría');
							btn_save.stop();
							btn_save_close.stop();
						});
					}
					else {
						toastr.info('Debe Completar Todos Los Campos');
					}
				},
				mwAddSubCategory() {
					_this = this;
					$.magnificPopup.open({
			      removalDelay: 500,
			      items: {
			        src: $('#modal-new-subcategory')
			      },
			      callbacks: {
			        beforeOpen: function (e) {
			          this.st.mainClass = 'mfp-flipInY';
			        }
			      },
			      midClick: true
			    });
					_this.mw_new_subcategory_name = null;
					_this.mw_new_subcategory_route = null;
					setTimeout(function() {
						$('#mw_id_category').select2("val", _this.id_category);
					}, 100);
			    setTimeout(function() {
			    	$('#mw_subcategory_name').focus();
			    }, 100);
				},
				saveSubCategory(close) {
					if (this.mw_new_subcategory_name != null && this.mw_new_subcategory_route != null && this.mw_id_category != null && $.trim(this.mw_new_subcategory_name) != '' && $.trim(this.mw_new_subcategory_route) != '') {
						_this = this;
						var btn_save = Ladda.create(document.getElementById('modal-new-subcategory-btn-save'));
						var btn_save_close = Ladda.create(document.getElementById('modal-new-subcategory-btn-save-close'));
						btn_save.start();
						btn_save_close.start();
						$.post('/admin/category/create', {
							_token: _this.token,
							id_parent: _this.mw_id_category,
							name: _this.mw_new_subcategory_name,
							slug: _this.mw_new_subcategory_route
						})
						.done(function(response) {
							if (response.status != 'EXISTS') {
								_this.subcategories.push({
									id: response.id,
									id_parent: response.id_parent,
									text: response.name,
									route: response.slug
								});
							}
							$('#mw_subcategory_name').focus();
							_this.mw_new_subcategory_name = null;
							_this.mw_new_subcategory_route = null;
							setTimeout(function() {
								$('#id_subcategory').select2('val', response.id);
							});
							toastr.success('SubCategoría Creada Existosamente');
							btn_save.stop();
							btn_save_close.stop();
							if (close == true) {
								$.magnificPopup.close();
							}
						})
						.fail(function() {
							toastr.error('ERROR: Crear Nueva SubCategoría');
							btn_save.stop();
							btn_save_close.stop();
						});
					}
					else {
						toastr.info('Debe Completar Todos Los Campos');
					}
				},
				addAttr: function() {
					if (this.attr_value != null && this.attr_value != '') {
						_this = this;
						exists = false;
						this.attr_list.map(function(item) {
							if (_this.id_attr == item.id) {
								_this.animate($('#pos'+item.pos));
								exists = true;
							}
						});
						if (!exists)
							$.each(_this.attributes, function(i, v) {
								if (_this.id_attr == v.id) {
									_this.attr_list.push({id: v.id, text: v.text , value: _this.attr_value, pos: _this.attr_list.length });
								}
							});
						this.attr_value = '';
					}
					else {
						toastr.info('Debe Completar Todos Los Campos');
					}
				},
				removeAttr: function(attr_id) {
					this.attr_list = this.attr_list.filter(function(item) {
						return attr_id != item.id;
					});
				},
				removeCat(id) {
					this.product_category_list = this.product_category_list.filter(function(item) {
						return id != item.id;
					});
				},
				addCategoryProduct() {
					if (this.id_category && this.id_subcategory) {
						_this = this;
						$.each(_this.categories, function(i, v) {
							if (_this.id_category == v.id)
								_this.category_name = v.text;
						});
						$.each(_this.subcategories, function(i, v) {
							if (_this.id_subcategory == v.id) {
								_this.subcategory_name = v.text;
								_this.route = v.route;
							}
						});
						exists = false;
						$.each(_this.product_category_list, function(i, v) {
							if (_this.category_name == v.category) {
								if (_this.subcategory_name == v.subcategory) {
									exists = true;
									_this.animate($('#cpos'+v.id));
								}
							}
						});
						if (!exists) {
							this.product_category_list.push({
								id: this.product_category_list.length, 
								category: this.category_name, 
								id_category: this.id_category, 
								subcategory: this.subcategory_name,
								id_subcategory: this.id_subcategory,
								route: this.route
							});
						}
					}
					else {
						toastr.info('Seleccione Primero la Categoría y SubCategoría del Producto');
					}
				},
				animate: function(el) {
					el.addClass('shake animated');
						var animation = setTimeout(function() { 
							el.removeClass('shake animated'); 
					}, 1000);
				},
				slugify(text){
				  return text.toString().toLowerCase()
				    .replace(/\s+/g, '-')           // Replace spaces with -
				    .replace(/[^\w\-]+/g, '')       // Remove all non-word chars
				    .replace(/\-\-+/g, '-')         // Replace multiple - with single -
				    .replace(/^-+/, '')             // Trim - from start of text
				    .replace(/-+$/, '');            // Trim - from end of text
				},
				cac(str){
					var conversions = new Object();
					conversions['ae'] = 'ä|æ|ǽ';
					conversions['oe'] = 'ö|œ';
					conversions['ue'] = 'ü';
					conversions['Ae'] = 'Ä';
					conversions['Ue'] = 'Ü';
					conversions['Oe'] = 'Ö';
					conversions['A'] = 'À|Á|Â|Ã|Ä|Å|Ǻ|Ā|Ă|Ą|Ǎ';
					conversions['a'] = 'à|á|â|ã|å|ǻ|ā|ă|ą|ǎ|ª';
					conversions['C'] = 'Ç|Ć|Ĉ|Ċ|Č';
					conversions['c'] = 'ç|ć|ĉ|ċ|č';
					conversions['D'] = 'Ð|Ď|Đ';
					conversions['d'] = 'ð|ď|đ';
					conversions['E'] = 'È|É|Ê|Ë|Ē|Ĕ|Ė|Ę|Ě';
					conversions['e'] = 'è|é|ê|ë|ē|ĕ|ė|ę|ě';
					conversions['G'] = 'Ĝ|Ğ|Ġ|Ģ';
					conversions['g'] = 'ĝ|ğ|ġ|ģ';
					conversions['H'] = 'Ĥ|Ħ';
					conversions['h'] = 'ĥ|ħ';
					conversions['I'] = 'Ì|Í|Î|Ï|Ĩ|Ī|Ĭ|Ǐ|Į|İ';
					conversions['i'] = 'ì|í|î|ï|ĩ|ī|ĭ|ǐ|į|ı';
					conversions['J'] = 'Ĵ';
					conversions['j'] = 'ĵ';
					conversions['K'] = 'Ķ';
					conversions['k'] = 'ķ';
					conversions['L'] = 'Ĺ|Ļ|Ľ|Ŀ|Ł';
					conversions['l'] = 'ĺ|ļ|ľ|ŀ|ł';
					conversions['N'] = 'Ñ|Ń|Ņ|Ň';
					conversions['n'] = 'ñ|ń|ņ|ň|ŉ';
					conversions['O'] = 'Ò|Ó|Ô|Õ|Ō|Ŏ|Ǒ|Ő|Ơ|Ø|Ǿ';
					conversions['o'] = 'ò|ó|ô|õ|ō|ŏ|ǒ|ő|ơ|ø|ǿ|º';
					conversions['R'] = 'Ŕ|Ŗ|Ř';
					conversions['r'] = 'ŕ|ŗ|ř';
					conversions['S'] = 'Ś|Ŝ|Ş|Š';
					conversions['s'] = 'ś|ŝ|ş|š|ſ';
					conversions['T'] = 'Ţ|Ť|Ŧ';
					conversions['t'] = 'ţ|ť|ŧ';
					conversions['U'] = 'Ù|Ú|Û|Ũ|Ū|Ŭ|Ů|Ű|Ų|Ư|Ǔ|Ǖ|Ǘ|Ǚ|Ǜ';
					conversions['u'] = 'ù|ú|û|ũ|ū|ŭ|ů|ű|ų|ư|ǔ|ǖ|ǘ|ǚ|ǜ';
					conversions['Y'] = 'Ý|Ÿ|Ŷ';
					conversions['y'] = 'ý|ÿ|ŷ';
					conversions['W'] = 'Ŵ';
					conversions['w'] = 'ŵ';
					conversions['Z'] = 'Ź|Ż|Ž';
					conversions['z'] = 'ź|ż|ž';
					conversions['AE'] = 'Æ|Ǽ';
					conversions['ss'] = 'ß';
					conversions['IJ'] = 'Ĳ';
					conversions['ij'] = 'ĳ';
					conversions['OE'] = 'Œ';
					conversions['f'] = 'ƒ';
					for(var i in conversions){
					    var re = new RegExp(conversions[i],"g");
					    str = str.replace(re,i);
					}
					return str;
				},
				createSubCaterogyRoute() {
					if (this.mw_new_subcategory_name != null)
						this.mw_new_subcategory_route = this.mw_new_category_route+'/'+this.slugify(this.cac(this.mw_new_subcategory_name));
				}
			},
			watch: {
				purchase_price(value) {
					this.purchase_price = number_format(value);
				},
				sale_price(value) {
					this.sale_price = number_format(value);
				},
				id_attr(id) {
					setTimeout(function() {
						$('#id_attr').select2('val', id);
					}, 100);
				},
				id_type(id) {
					_this = this;
					setTimeout(function() {
						$('#id_type').select2('val', id);
						_this.type_selected = $('#id_type').select2('data')[0]['text'];
					}, 100);
				},
				mw_new_category_name() {///agreglar las rutas de las subcategorias
					if (this.mw_new_category_name != null)
						this.mw_new_category_route = this.slugify(this.cac(this.mw_new_category_name));
				},
				mw_id_category() {
					_this = this;
					$.each(_this.categories, function(i, v) {
						if (_this.mw_id_category == v.id) {
							_this.mw_new_category_route = v.route;
						}
					});
					this.createSubCaterogyRoute();
				},
				mw_new_subcategory_name() {
					this.createSubCaterogyRoute();
				},
				id_brand(id) {
					this.ajax_open = true;
					$('#id_brand').select2('val', id);
					_this = this;
					_this.brand_selected_name = null;
						_this.reference_selected_name = null;
					$.each(this.brands, function(i, v) {
						if (_this.id_brand == v.id)
							_this.brand_selected_name = v.text;
					});
					$("body").addClass("loading");
					$.post('/admin/references', { _token: this.token, id_brand: this.id_brand })
					.done(function(response) {
						_this.ajax_open = false;
						$("body").removeClass("loading");
						_this.references = [];
						$('#id_reference').select2('val', null);
						if (response.status == 'EMPTY') {
							toastr.info('La Categoría Seleccionada No Contiene Referencias');
						}
						else {
							$.each(response, function(i, v) {
								_this.references.push({id:v.id, text:v.name});
							});	
							if (_this.select_ref_after_refresh) {
								setTimeout(function() {
									$('#id_reference').select2('val', _this.select_ref_after_refresh);
								}, 100);
							}
						}
					})
					.fail(function() {
						_this.ajax_open = false;
						$("body").removeClass("loading");
						toastr.error('ERROR: Cargar lista de referencias');
					});
				},
				id_reference(id) {
					$('#id_reference').select2('val', id);
					if (this.set_name) {
						_this = this;
						this.name = '';
						$.each(_this.references, function(i, v) {
							if (_this.id_reference == v.id)
								_this.reference_selected_name = v.text;
						});
						if (this.reference_selected_name != null)
							this.name = this.brand_selected_name+' '+this.reference_selected_name;
						else
							this.name = this.brand_selected_name;
					}
				},
				id_supplier(id) {
					$('#id_supplier').select2('val', id);
				},
				id_subcategory(id) {
					setTimeout(function() {
						$('#id_subcategory').select2('val', id);
					}, 100);
				},
				id_category(id) {
					_this = this;
					$("body").addClass("loading");
					$.post('/admin/categories', {
						_token: _this.token,
						id_parent: id
					})
					.done(function(response) {
						$("body").removeClass("loading");
						_this.subcategories = [];
						$('#id_subcategory').select2('val', null);
						$.each(response, function(i, v) {
							_this.subcategories.push({
								id: v.id,
								id_parent: v.id_parent,
								text: v.name, 
								route: v.slug
							});
						});
					})
					.fail(function() {
						$("body").removeClass("loading");
						toastr.error('ERROR: Cargar Las SubCategorías');
					});
				}
			}
		});
	//});
</script>
@stop