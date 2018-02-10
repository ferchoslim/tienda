@extends('admin.layout.master')
@section('title', 'Administrador | Seriales de Productos')
@section('content')
	@include('admin.header')
	@include('admin.side-menu')
	<section id="content_wrapper" class="animated fadeIn" v-cloak>
		<div class="panel heading-border panel-dark">
			<div class="panel-heading">
				<span class="panel-title hidden-xs">Seriales de Productos</span>
					<ul class="nav panel-tabs-border panel-tabs">
						<li class="active">
							<a href="#tab1" data-toggle="tab" id="info_tab">Buscar</a>
						</li>
						<li>
							<a href="#tab2" data-toggle="tab" id="attr_tab">Agregar</a>
						</li>
					</ul>
			</div>
			<div class="panel-body p20 admin-form theme-primary">
				<div class="tab-content">
					<div class="tab-pane active" id="tab1">
						<div class="section-divider mb20"><span>Busqueda de Seriales</span></div>
						<div class="col-xs-12">
							<div class="section row">
								<div class="col-xs-10">
									<input-text 
										id="serialtosearch"
										v-model="serialtosearch" 
										name="serialtosearch" 
										placeholder="Numero de Serie del Producto" 
										tooltip="Código/Numero de Serie/IMEI del Producto" 
										icon="fa fa-barcode">
									</input-text>
								</div>
								<div class="col-xs-2">
									<button v-on:click.prevent="searchSerial" type="button" class="btn btn-sm btn-primary ladda-button" data-style="expand-left" id="btn-search">
										<span class="ladda-label">Buscar</span>
									</button>
								</div>
							</div>
							<div class="section" v-if="searchResult.length != 0">
								<h3>Nombre: @{{ searchResult.name }}</h3>
								<h3>Bodega: @{{ searchResult.warehouse }}</h3>
								<h3>Marca: @{{ searchResult.brand }}</h3>
								<h3>Referencia: @{{ searchResult.reference }}</h3>
								<h3>Proveedor: @{{ searchResult.supplier_name }} (@{{ searchResult.supplier_org }})</h3>
							</div>
						</div>
					</div>
					<div class="tab-pane" id="tab2">
						<div class="section-divider mb20"><span>Agregar Seriales de Productos</span></div>
						<div class="col-md-12">
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
								<select name="id_lot" v-model="id_lot" id="id_lot" class="form-control">
									<option value="0" style="display: none;">Lote</option>
									<option v-for="lot in lots" :value="lot.id">LOTE ID: @{{ lot.id }} | PRECIO COMPRA: @{{ lot.purchase_price }} | PRECIO VENTA:@{{  lot.sale_price }} | CANTIDAD: @{{ lot.quantity }} | ESTADO: @{{ lot.state }}</option>
								</select>
							</div>
							<div class="section">
								<select2 id="id_warehouse" name="id_warehouse" v-model="id_warehouse" placeholder="Bodegas" :options="warehouses"></select2>
							</div>
							<div class="section">
								<input-text 
									id="serial"
									v-model="serial" 
									name="serial" 
									placeholder="Numero de Serie del Producto" 
									tooltip="Código/Numero de Serie/IMEI del Producto" 
									icon="fa fa-barcode"
									v-on:enter="addSerial">
								</input-text>
							</div>
							<div class="section text-right">
								<button v-on:click.prevent="addSerial" type="button" class="btn btn-primary" id="btn-add-serial">
									<span>Agregar</span>
								</button>
							</div>
						</div>
						<div class="col-md-12">
							<div class="col-md-10">
								<div class="section">
									<h3>@{{ product_name }}</h3>
								</div>
							</div>
							<div class="col-md-2">
								<div class="section">
									<button v-on:click.prevent="saveSerialList" type="button" class="btn btn-primary ladda-button" data-style="expand-left" id="btn-add-serial">
										<span class="ladda-label">guardar seriales</span>
									</button>
								</div>
							</div>
							<div class="section">
								<ul>
									<li v-for="(serial, index) in serials" style="display: inline; float: left;padding: 5px;">
									<span>@{{ index+1 }}. </span><span>@{{ serial }}</span>
									</li>
								</ul>
							</div>
						</div>
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
		el: '#content_wrapper',
		data: {
			token: '{{csrf_token()}}',
			code: '',
			serial: '',
			serialtosearch: '',
			serials: [],
			product_name: '',
			code_locked: true,
			lots: [],
			id_lot: 0,
			quantity: '',
			id_warehouse: '',
			searchResult: [],
			warehouses: [
			{ id: 0, text: 'BODEGA PRINCIPAL', description: 'bodega donde se almacenan todos los productos.'},
			@foreach($warehouses as $warehouse) 
				{ id: '{{ $warehouse->id }}', text: '{{ $warehouse->name }}', description: '{{ $warehouse->description }}' }, 
			@endforeach
			],
			serialsFromServer: [
			@foreach ($serials as $serial)
				{ serial: '{{ $serial->serial }}' },	
			@endforeach
			@foreach ($serialsinwarehouses as $serial)
				{ serial: '{{ $serial->serial }}' },	
			@endforeach
			]
		},
		mounted() {
			toastr.options = {
				preventDuplicates: true,
				preventOpenDuplicates: true
			};
		},
		methods: {
			ajaxTurn() {
				if ($('body').hasClass('loading')) 
					$('body').removeClass('loading');
				else
					$("body").addClass("loading");
			},
			saveSerialList() {
				$this = this;
				if (this.code == '' || this.code == null) {
					toastr.info('Debe Agregar el Código del Producto');
					return;
				}
				if (this.serials.length == 0) {
					toastr.info('Lista de Seriales Vacía');
					return;
				}
				if (this.id_warehouse == '') {
					toastr.info('Debe Seleccionar una Bodega');
					return;
				}
				this.ajaxTurn();
				$.post('/admin/product/serial/list/save', { _token: $this.token,	code: $this.code, id_lot: $this.id_lot, 
					serials: $this.serials, id_warehouse: $this.id_warehouse })
					.done(function(response) {
						$this.ajaxTurn();
						if (response.status === 'NEED_MORE_PARAMETERS') {
							toastr.error('Informacion Incompleta');
							return;
						}
						if (response.status === 'NOT_FOUND') {
							toastr.error('Producto No Encontrado');
							return;
						}
						if (response.status === 'EMPTY') {
							toastr.error('Lista de Seriales Vacía');
							return;
						}
						if (response.status === 'EXISTS') {
							toastr.error('Uno o Más Seriales Ya han sido Agregados');
							return;
						}
						toastr.success('Lista de Seriales Guardada Existosamente');
						$this.serials = [];
						$this.code = $this.quantity = '';
						$this.lots = [];
						$this.id_lot = 0;

						//console.log(response);
					})
					.fail(function(response) {
						$this.ajaxTurn();
						toastr.error('No Se Pudo Guardar la Lista de Seriales');
					});
			},
			addSerial() {
				$this = this;
				//var btn_add_serial = Ladda.create(document.getElementById('btn-add-serial'));
				if (this.serial != '' && this.serial != null) {
					if (this.serials.length < this.quantity) {
						var exists = false;
						$this.serials.map(function(item, index) {
							if ($this.serial == item) {
								toastr.warning('Serial ya agregado a la lista #'+(index+1));
								exists = true;
							}
						});
						if (exists == false) {
							//$this.ajaxTurn();
							$this.serialsFromServer.map(function(item, index) {
								if ($this.serial == item.serial) {
									toastr.warning('Ya existe un producto con ese numero de serie');
									exists = true;
								}
							});
							if (exists == false) {
								$this.serials.push($this.serial);
								$this.serial = '';
							}
							/*$.post('/admin/product/serial/check', { _token: $this.token, serial: $this.serial })
							.done(function(response) {
								$('#serial').prop('readonly', false);
								$this.ajaxTurn();
								if (response.status === 'EXISTS') {
									toastr.warning('Ya existe un producto con ese numero de serie');
								}
								else {
									$this.serials.push($this.serial);
									$this.serial = '';
								}
							})
							.fail(function(response) {
								$this.ajaxTurn();
								$('#serial').prop('readonly', false);
								toastr.error('No se pudo verificar el número de serie del producto');
							});*/
						}
					}
					else {
						toastr.warning('Cantidad de Seriales para el Lote Superada, Cantidad: '+$this.quantity);
					}
				}
				else {
					toastr.info('Debe Agregar el Serial');
				}
			},
			addCode() {
				$this = this;
				this.ajaxTurn();
				$.post('/admin/product/get', { _token: $this.token,	code: $this.code })
					.done(function(response) {
						$this.ajaxTurn();
						if (response.status === 'NOT_FOUND') {
							toastr.warning('Código de producto no encontrado');
						}
						else {
							//$('#code').prop('readonly', 'true');
							//$('#serial').focus();
							$this.product_name = response.product.name;
							$this.lots = response.lot;
						}
					})
					.fail(function(response) {
						$this.ajaxTurn();
						toastr.error('No Se Pudo Consultar El Codigo Del Producto');
					});
			},
			searchSerial() {
				this.searchResult = [];
				var btn_search = Ladda.create(document.getElementById('btn-search'));
				btn_search.start();
				$this = this;
				$.post('/admin/product/serial/get', { _token: $this.token, serial: $this.serialtosearch })
					.done(function(response) {
						switch(response.status) {
							case 'NOT_FOUND':
								toastr.warning('Serial No Encontrado');
								break;
							case 'OK':
								$this.searchResult = { name: response.product.name, warehouse: response.warehouse.name,
								brand: response.product.brand.name, reference: response.product.reference.name, supplier_org: response.supplier.org_name,
								supplier_name: response.supplier.fullname };
								break;
						}
					})
					.fail(function() {
						toastr.error('No Se Pudo Consultar El Serial Del Producto');	
					})
					.always(function() {
						btn_search.stop();
					});////model serial
			}
		},
		watch: {
			id_lot() {
				$this = this;
				this.serials = [];
				this.lots.map(function(item) {
					if (item.id == $this.id_lot)
						$this.quantity = item.quantity;
				});
			}
		}
	});
</script>
@stop