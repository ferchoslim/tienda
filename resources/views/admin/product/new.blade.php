@extends('admin.layout.master')
@section('title', 'Administrador | Nuevo Producto')
@section('content')
@include('admin.header')
@include('admin.side-menu')
<section id="content_wrapper" v-cloak>
	<section id="content" class="table-layout animated fadeIn">
		<form id="createProductForm" onsubmit="return false;" enctype="multipart/form-data">
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
						<li>
							<a href="#tab4" data-toggle="tab" id="cat_tab">Seriales</a>
						</li>
					</ul>
				</div>
				<div class="panel-body p20 admin-form theme-primary">
					<div class="tab-content">
					@include('admin.product.parts.new.tab1')
					@include('admin.product.parts.new.tab2')
					@include('admin.product.parts.new.tab3')
					@include('admin.product.parts.new.tab4')
					</div>
					<div class="section text-right">
						<div class="col-md-12">
							<button 
								v-on:click.prevent="createProduct" 
								type="button" 
								class="btn btn-primary ladda-button" 
								data-style="expand-left" 
								id="btn-save">
								<span class="ladda-label">Guardar</span>
							</button>
							<button 
								type="button" 
								click="formReset" 
								class="btn btn-danger" 
								id="btn-reset">Resetear
							</button>
						</div>
					</div>
				</div>
			</div>
		<!--<input type="hidden" v-model="attr_list" name="attr_list">
		<input type="hidden" v-model="product_category_list" name="product_category_list">-->
		@if(isset($product))
		<!--<input type="hidden" name="editing" value="true">
		<input type="hidden" name="id_product" value="{{ $product->id }}">-->
		@endif
		</form>
	@include('admin.product.parts.new.modal-window.new-brand')
	@include('admin.product.parts.new.modal-window.new-reference')
	@include('admin.product.parts.new.modal-window.new-type')
	@include('admin.product.parts.new.modal-window.new-attribute')
	@include('admin.product.parts.new.modal-window.new-category')
	@include('admin.product.parts.new.modal-window.new-subcategory')
	</section>
</section>
@stop
@section('script')
<script src="{{ asset('js/vue/modal-window.js') }}"></script>
<script src="{{ asset('js/vue/input-text.js') }}"></script>
<script src="{{ asset('js/vue/select2.js').'?'.rand(1000, 9999) }}"></script>
<script>
Vue.use(VeeValidate);
new Vue({
	el: "#content_wrapper",
	data: {
		token: '{!! csrf_token() !!}',
		state: [
			{ id: 'new', text: 'Nuevo' },
			{ id: 'used', text: 'Usado' },
			{ id: 'refurbished', text: 'Remanofacturado'}  
		],
		product: {
			code: '',
			name: '',
			purchasePrice: '',
			salePrice: '',
			quantity: '',
			shortDescription: '',
			fullDescription: '',
			stateId: 'new',
			typeId: '',
			serial: ''
		},
		brandId: '',
		referenceId: '',
		supplierId: '',
		brands: {!! $brands !!},
		references: [],
		suppliers: {!! $suppliers !!},
		attributes: {!! $attributes !!},
		attributesList: [],
		attribute: {
			id: '',
			name: '',
			value: ''
		},
		types: {!! $types !!},
		categories: {!! $categories !!},
		categoriesJSON: {!! $categories !!},
		subcategories: [],
		categoryId: '',
		subcategoryId: '',
		categoriesList: [],
		modalWindows: {
			newBrand: {
				name: ''
			},
			newReference: {
				brandId: '',
				name: '',
				reference: ''
			},
			newType: {
				name: ''
			},
			newAttribute: {
				name: ''
			},
			newCategory: {
				name: ''
			},
			newSubCategory: {
				id: '',
				name: ''
			}
		},
		warehouses: {!! $warehouses !!},
		warehouseId: '',
		serials: [],
		products: {!! $products !!},
		currentCode: ''
	},
	mounted() {
		$('#code').focus();
		var categories = [];
		this.warehouses = this.warehouses.map(function(warehouse, index) {
			return { 
				id: warehouse.id, 
				text: this.ucwords(warehouse.name), 
				description: this.ucwords(warehouse.description),
				template: '<span>'+this.ucwords(warehouse.name)+
				'</span><p class="small">'+this.ucwords(warehouse.description)+'</p>' 
			};
		}.bind(this));
		this.brands = this.brands.map(function(brand, index) {
			return { id: brand.id, text: this.ucwords(brand.name), references: brand.references };
		}.bind(this));
		this.suppliers = this.suppliers.map(function(supplier, index) {
			return { id: supplier.id, text: this.ucwords(supplier.org_name) };
		}.bind(this));
		this.types = this.types.map(function(type, index) {
			return { id: type.id, text: this.ucwords(type.name) };
		}.bind(this));
		this.attributes = this.attributes.map(function(attribute, index) {
			return { id: attribute.id, text: this.ucwords(attribute.name) };
		}.bind(this));
		this.categories.map(function(category, index) {
			if (category.parent_id == 0) {
				var subcategories = [];
				this.categories.map(function(subcategory, index2) {
					if (subcategory.parent_id == category.id) {
						subcategories.push({ 
							parentId: category.id, 
							id: subcategory.id , 
							text: this.ucwords(subcategory.name), 
							slug: subcategory.slug 
						});
					}
				}.bind(this));
				categories.push({ 
					id: category.id, 
					text: this.ucwords(category.name), 
					subcategories: subcategories, 
					slug: category.slug 
				});
			}
		}.bind(this));
		this.categories = categories;
		PNotify.defaults.styling = "material";
		PNotify.defaults.icons = "material";
		PNotify.defaults.width = '680px';
		PNotify.defaults.stack = {
      "dir1": "up",
      "dir2": "left",
      "firstpos1": 25,
      "firstpos2": 25
    };
	},
	methods: {
		codeCheck() {
			if (this.product.code && this.product.code != this.currentCode) {
				var product = this.products.find(function(product) {
					return product.code == this.product.code;
				}.bind(this));
				self = this;
				if (product) {
					swal({
					  title: "Codigo Existente",
					  text: "¿Desea cargar la informacion del producto?",
					  icon: "warning",
					  buttons: ["Cancelar", "Aceptar"],
					})
					.then((loadInfo) => {
					  if (loadInfo) {
					  	this.currentCode = this.product.code;
					  	$('.fileupload-preview img').prop('style', false);
					  	$('.fileupload-preview img').prop('src', '{{ asset('images/products/433x325') }}/'+
					  		product.images[0].name);
					  	self.select2(product.brand_id, '#brandId');
					  	self.select2(product.reference_id, '#referenceId');
					  	self.select2(product.lot.supplier_id, '#supplierId');
					    self.product.name = product.name;
					    self.product.salePrice = product.lot.sale_price;
					    self.product.purchasePrice = product.lot.purchase_price;
					    self.product.quantity = product.lot.quantity;
					    self.product.shortDescription = product.short_description;
					    self.product.fullDescription = product.full_description;
					    self.select2(product.lot.state, '#stateId');
					    self.select2(product.type_id, '#typeId');
					    product.attributes.map(function(attribute, index) {
					    	var attributeFromAttributes = self.attributes.find(function(attr) {
					    		return attribute.attribute_id == attr.id;
					    	});
					    	self.attributesList.push({
					    		id: attribute.attribute_id, 
									name: self.ucwords(attributeFromAttributes.text), 
									value: attribute.value 
					    	});
					    });
					    product.categories.map(function(item, index) {
					    	var categoryFromCategories = self.categoriesJSON.find(function(category) {
					    		return item.category_id == category.id;
					    	});
					    	if (categoryFromCategories.parent_id) {
					    		var parent = self.categoriesJSON.find(function(category) {
						    		return categoryFromCategories.parent_id == category.id;
						    	});
					    	}
					    	self.categoriesList.push({
					    		id: _.size(self.categoriesList)+1,
									parentId: parent.id,
									categoryId: categoryFromCategories.id,
									category: self.ucwords(parent.name),
									subcategory: self.ucwords(categoryFromCategories.name),
									slug: categoryFromCategories.slug
					    	});
					    });
					    product.serials.map(function(serial) {
					    	self.serials.push(serial.serial);
					    });
					  } else {
					    self.product.code = '';
					  }
					});
				}
			}
		},
		select2(value, element) {
			setTimeout(function() {
				$(element).val(value);
				$(element).trigger('change');			
			}, 0);
		},
		imeiCheck(value) {
			if (_.size(value) != 15)
				return false;
		  return 0 === (value.replace(/\D/g, '').split('').reverse().map(function(d, i) {
		    return +['0123456789','0246813579'][i % 2][+d];
		  }).reduce(function(p, n) {
		    return p + n;
		  }) % 10);
		},
		removeSerialFromList(serial) {
			this.serials = this.serials.filter(function(s) {
				return s != serial;
			});
			setTimeout(function() {
				if (!_.size(this.serials)) {
					$('#quantity').prop('readonly', false);
				}
			}, 0);
		},
		addSerial() {
			if (this.product.serial) {
				$('#quantity').prop('readonly', true);
				if (!this.product.typeId) {
					PNotify.info({
						title: 'Seriales',
				  	text: 'Primero seleccione el tipo de producto en la pestaña "Atributos".'
					});
					return;
				}
				if (_.kebabCase($("#typeId").select2('data')[0].text) == 'telefonos') {
					if (!this.imeiCheck(this.product.serial)) {
						PNotify.notice({
							title: 'Serial Invalido',
					  	text: 'Numero IMEI invalido, los Numeros de IMEI deben tener 15 Digitos.'
						});
						return;
					}
				}
				var serialExists = this.serials.find(function(serial) {
					return serial == this.product.serial;
				}.bind(this));
				if (!serialExists) {
					this.serials.push(this.product.serial);
					this.product.serial = '';
				}
				else {
					PNotify.info({
						title: 'Seriales',
				  	text: 'Numero de Serie "'+this.product.serial+'" ya esta agregado a la lista.'
					});
				}
			}
			else {
				PNotify.info({
					title: 'Seriales',
			  	text: 'Debe escribir primero el numero de serie que desea agregar.'
				});
			}
		},
		createProduct() {
			/*if (!$('#image1').val() && !this.editing) {
				PNotify.info({
					title: 'Producto',
			  	text: 'Debe agregar las imagenes para el producto.'
				});
				return;
			}
			if (parseInt(this.product.purchasePrice.replace(/[^0-9\.-]+/g,"")) > 
				parseInt(this.product.salePrice.replace(/[^0-9\.-]+/g,""))) {
				PNotify.info({
					title: 'Producto',
			  	text: 'El "Precio de Compra" no puede ser mayor que el "Precio de Venta".'
				});
				return;
			}
			if (!this.categoriesList.length) {
				PNotify.info({
					title: 'Producto',
			  	text: 'Debe agregar las categorías del producto en la pestaña "Categorías".'
				});
				return;
			}
			this.$validator.validateAll().then((result) => {
				self = this;
        if (result) {*/
					$.ajax({ 
						method: 'POST',
						url: '/admin/product/create',
						data: { 
							/*formData: new FormData($('#createProductForm')[0]),
							attributes: this.attributesList,
							categories: this.categoriesList,
							serials: this.serials,*/
							_token: this.token
						}/*,
						cache: false,
						dataType: 'json',
						processData: false,
						contentType: false*/
					})
					.done(function(response) {
						console.log(response);
					})
					.fail(function(error) {
						PNotify.error({
					  	title: 'ERROR',
					  	text: 'Fallo al crear el producto, por favor intente nuevamente.'
						});
					});
        /*}
        else {
        	PNotify.notice({
        		title: 'Producto',
				  	text: 'Falta Información para crear el producto.'
					});
        }
      });*/
		},
		magnificPopup(mw, focus, select2ById = null) {
			$.magnificPopup.open({
	      removalDelay: 500,
	      items: {
	        src: $('#'+mw)
	      },
	      callbacks: {
	        open: function(e) {
	        	setTimeout(function() {
			    		$('#'+focus).focus();
			    		if (select2ById) {
			    			$('#'+select2ById.name).val(select2ById.value);
			    			$('#'+select2ById.name).trigger('change');
			    		}
			    	}, 100);
	        },
	        beforeOpen: function (e) {
	          this.st.mainClass = 'mfp-flipInY';
	        }
	      },
	      midClick: true
	    });
	    $.magnificPopup.instance._onFocusIn = function(e) {
		    if( $(e.target).hasClass('select2-search__field') ) {
		        return true;
		    } 
		    $.magnificPopup.proto._onFocusIn.call(this,e);
			};
		},
		showMWCreateSubCategory() {
			$('#mwNewSubCategoryCategoryId').select2('val', this.categoryId);
			this.modalWindows.newSubCategory.name = '';
			this.magnificPopup('mwNewSubCategory', 'mwNewSubCategoryName');
		},
		createSubCategory(close) {
			if (this.modalWindows.newSubCategory.name && this.modalWindows.newSubCategory.id) {
				var selectedCategory = this.categories.find(function(category) {
					return category.id == this.modalWindows.newSubCategory.id;
				}.bind(this));
				var newSubCategory = selectedCategory.subcategories.find(function(subcategory) {
					return _.toLower(subcategory.text) == _.toLower(this.modalWindows.newSubCategory.name);
				}.bind(this));
				if (!newSubCategory) {
					var btnSave = Ladda.create(document.getElementById('mwNewSubCategoryBtnSave'));
					var btnSaveClose = Ladda.create(document.getElementById('mwNewSubCategoryBtnSaveClose'));
					btnSave.start();
					btnSaveClose.start();
					var self = this;
					$.ajax({ 
						method: 'POST',
						url: '/admin/subcategory/create',
						data: new FormData($('#mwNewSubCategoryForm')[0]),
						cache: false,
						dataType: 'json',
						processData: false,
						contentType: false
					})
					.done(function(response) {
						btnSave.stop();
						btnSaveClose.stop();
						PNotify.success({
							title: 'SubCategoría '+self.ucwords(response.subcategory.name)+' Creada',
							text: 'SubCategoría de producto creada correctamente.'
						});
						var categories = [];
						response.categories.map(function(category, index) {
							if (category.parent_id == 0) {
								var subcategories = [];
								response.categories.map(function(subcategory, index2) {
									if (subcategory.parent_id == category.id) {
										subcategories.push({ 
											parentId: category.id, 
											id: subcategory.id , 
											text: self.ucwords(subcategory.name), 
											slug: subcategory.slug 
										});
									}
								});
								categories.push({ 
									id: category.id, 
									text: self.ucwords(category.name), 
									subcategories: subcategories, 
									slug: category.slug 
								});
							}
						});
						self.categoryId = '';
						self.modalWindows.newSubCategory.id = '';
						self.categories = categories;
						if (close) {
							$.magnificPopup.close();
							self.select2(response.category.id, '#categoryId');
							self.select2(response.subcategory.id, '#subcategoryId');
						}
						else {
							self.modalWindows.newSubCategory.name = '';
							self.select2(response.category.id, '#categoryId');
							self.select2(response.category.id, '#mwNewSubCategoryCategoryId');
							self.select2(response.subcategory.id, '#subcategoryId');
						}
					})
					.fail(function(error) {
						btnSave.stop();
						btnSaveClose.stop();
						PNotify.error({
							title: 'ERROR',
							text: 'No se pudo crear la SubCategoría de producto.'
						});
					});
				}
				else {
					PNotify.notice({
						title: 'SubCategoría Existente',
						text: 'Ya existe "'+this.modalWindows.newSubCategory.name+'" como SubCategoría de "'+selectedCategory.text+'".'
					});
				}
			}
			else {
				PNotify.info({
					title: 'SubCategoría',
					text: 'Debe seleccionar la "Categoria" y agregar el "Nombre de la SubCategoría" antes de guardar.'
				});
			}
		},
		showMWCreateCategory() {
			this.modalWindows.newCategory.name = '';
			this.magnificPopup('mwNewCategory', 'mwNewCategoryName');
		},
		createCategory(close) {
			if (this.modalWindows.newCategory.name) {
				var newCategory = this.categories.find(function(category) {
					return _.toLower(category.text) == _.toLower(this.modalWindows.newCategory.name);
				}.bind(this));
				if (!newCategory) {
					var btnSave = Ladda.create(document.getElementById('mwNewCategoryBtnSave'));
					var btnSaveClose = Ladda.create(document.getElementById('mwNewCategoryBtnSaveClose'));
					btnSave.start();
					btnSaveClose.start();
					var self = this;
					$.ajax({ 
						method: 'POST',
						url: '/admin/category/create',
						data: new FormData($('#mwNewCategoryForm')[0]),
						cache: false,
						dataType: 'json',
						processData: false,
						contentType: false
					})
					.done(function(response) {
						btnSave.stop();
						btnSaveClose.stop();
						PNotify.success({
							title: 'Categoría de Producto',
					  	text: 'Categoría "'+
							self.modalWindows.newCategory.name+'" creada correctamente.'
						});
						var categories = [];
						response.categories.map(function(category, index) {
							if (category.parent_id == 0) {
								var subcategories = [];
								response.categories.map(function(subcategory, index2) {
									if (subcategory.parent_id == category.id) {
										subcategories.push({ 
											parentId: category.id, 
											id: subcategory.id , 
											text: self.ucwords(subcategory.name), 
											slug: subcategory.slug 
										});
									}
								});
								categories.push({ 
									id: category.id, 
									text: self.ucwords(category.name), 
									subcategories: subcategories, 
									slug: category.slug 
								});
							}
						});
						self.categories = categories;
						if (close) {
							$.magnificPopup.close();
						}
						else {
							self.modalWindows.newCategory.name = '';
						}
						self.select2(response.category.id, '#categoryId');
					})
					.fail(function(error) {
						btnSave.stop();
						btnSaveClose.stop();
						PNotify.error({
							title: 'ERROR',
					  	text: 'No se pudo crear la categoría de producto.'
						});
					});
				}
				else {
					PNotify.notice({
						title: 'Categoría Existente',
				  	text: 'Ya existe "'+this.modalWindows.newCategory.name+'" como categoría de producto.'
					});
					this.modalWindows.newCategory.name = '';
				}
			}
			else {
				PNotify.info({
					title: 'Categoría',
			  	text: 'Debe agregar el "Nombre de la Categoría" antes de guardar.'
				});
			}
		},
		showMWCreateAttribute() {
			this.modalWindows.newAttribute.name = '';
			this.magnificPopup('mwNewAttribute', 'mwNewAttributeName');
		},
		createAttribute(close) {
			if (this.modalWindows.newAttribute.name) {
				var newAttribute = this.attributes.find(function(attribute) {
					return _.toLower(attribute.text) == _.toLower(this.modalWindows.newAttribute.name);
				}.bind(this));
				if (!newAttribute) {
					var btnSave = Ladda.create(document.getElementById('mwNewAttributeBtnSave'));
					var btnSaveClose = Ladda.create(document.getElementById('mwNewAttributeBtnSaveClose'));
					btnSave.start();
					btnSaveClose.start();
					var self = this;
					$.ajax({ 
						method: 'POST',
						url: '/admin/attribute/create',
						data: new FormData($('#mwNewAttributeForm')[0]),
						cache: false,
						dataType: 'json',
						processData: false,
						contentType: false
					})
					.done(function(response) {
						btnSave.stop();
						btnSaveClose.stop();
						PNotify.success({
							title: 'Attributo Creado',
					  	text: 'Atributo de producto "'+
							self.ucwords(response.attribute.name)+'" creado correctamente.'
						});
						self.attributes = response.attributes.map(function(attribute, index) {
							return { 
								id: attribute.id, 
								text: self.ucwords(attribute.name)
							};
						});
						self.attribute.id = '';
						self.attribute.name = '';
						self.select2(response.attribute.id, '#attributeId');
						if (close) {
							$.magnificPopup.close();
						}
						else {
							self.modalWindows.newAttribute.name = '';
						}
					})
					.fail(function(error) {
						btnSave.stop();
						btnSaveClose.stop();
						PNotify.error({
							title: 'ERROR',
					  	text: 'No se pudo crear el Atributo. Por favor intente nuevamente.'
						});
					});
				}
				else {
					PNotify.notice({
						title: 'Attributo Existente',
				  	text: 'Ya existe "'+this.modalWindows.newAttribute.name+'" como atributo de producto.'
					});
					this.modalWindows.newAttribute.name = '';
				}
			}
			else {
				PNotify.info({
					title: 'Attributo',
			  	text: 'Debe agregar el "Nombre de Atributo" antes de guardar.'
				});
			}
		},
		showMWCreateType() {
			this.modalWindows.newType.name = '';
			this.magnificPopup('mwNewType', 'mwNewTypeName');
		},
		createType(close) {
			if (this.modalWindows.newType.name) {
				var newType = this.types.find(function(type) {
					return _.toLower(type.text) == _.toLower(this.modalWindows.newType.name);
				}.bind(this));
				if (!newType) {
					var btnSave = Ladda.create(document.getElementById('mwNewTypeBtnSave'));
					var btnSaveClose = Ladda.create(document.getElementById('mwNewTypeBtnSaveClose'));
					btnSave.start();
					btnSaveClose.start();
					var self = this;
					$.ajax({ 
						method: 'POST',
						url: '/admin/type/create',
						data: new FormData($('#mwNewTypeForm')[0]),
						cache: false,
						dataType: 'json',
						processData: false,
						contentType: false
					})
					.done(function(response) {
						btnSave.stop();
						btnSaveClose.stop();
						PNotify.success({
							title: 'Tipo Creado',
					  	text: 'Tipo de producto "'+
							self.modalWindows.newType.name+'" creado correctamente.'
						});
						self.types = response.types.map(function(type, index) {
							return { 
								id: type.id, 
								text: self.ucwords(type.name)
							};
						});
						self.select2(response.type.id, '#typeId');
						if (close) {
							$.magnificPopup.close();
						}
						else {
							self.modalWindows.newType.name = '';
						}
					})
					.fail(function(error) {
						btnSave.stop();
						btnSaveClose.stop();
						PNotify.error({
							title: 'ERROR',
					  	text: 'No se pudo crear el Tipo de producto.'
						});
					});
				}
				else {
					PNotify.notice({
						title: 'Tipo Existente',
				  	text: 'Ya existe "'+this.modalWindows.newType.name+'" como tipo de producto.'
					});
					this.modalWindows.newType.name = '';
				}
			}
			else {
				PNotify.info({
					title: 'Tipo',
			  	text: 'Debe agregar el "Nombre de Tipo de Producto" antes de guardar.'
				});
			}
		},
		showMWCreateBrand() {
			this.modalWindows.newBrand.name = '';
			$('#mwNewBrandImage').val('');
			this.magnificPopup('mwNewBrand', 'mwNewBrandName');
		},
		createBrand(close) {
			if (this.modalWindows.newBrand.name && $('#mwNewBrandImage').val()) {
				self = this;
				var brandExists = this.brands.find(function(brand) {
					return _.camelCase(brand.text) === _.camelCase(this.modalWindows.newBrand.name);
				}.bind(this));
				if (brandExists) {
					PNotify.notice({
						title: 'Fabricante Existente',
				  	text: 'Fabricante "'+
						self.modalWindows.newBrand.name+'" ya existe en la lista de fabricantes.'
					});
					return;
				}
				var btnSave = Ladda.create(document.getElementById('mwNewBrandBtnSave'));
				var btnSaveClose = Ladda.create(document.getElementById('mwNewBrandBtnSaveClose'));
				btnSave.start();
				btnSaveClose.start();
				$.ajax({ 
					method: 'POST',
					url: '/admin/brand/create',
					data: new FormData($('#mwNewBrandForm')[0]),
					cache: false,
					dataType: 'json',
					processData: false,
					contentType: false
				})
				.done(function(response) {
					btnSave.stop();
					btnSaveClose.stop();
					PNotify.success({
						title: 'Fabricante Creado',
				  	text: 'Fabricante "'+
						self.modalWindows.newBrand.name+'" creado correctamente.'
					});
					self.brands = response.brands.map(function(brand, index) {
						return { 
							id: brand.id, 
							text: self.ucwords(brand.name), 
							references: brand.references 
						};
					});
					self.select2(response.brand.id, '#brandId');
					if (close) {
						$.magnificPopup.close();
					}
					else {
						self.modalWindows.newBrand.name = '';
						$('#mwNewBrandImage').val('');
					}
				})
				.fail(function(error) {
					btnSave.stop();
					btnSaveClose.stop();
					PNotify.error({
						title: 'ERROR',
				  	text: 'No se pudo crear el Fabricante.'
					});
				});
			}
			else {
				PNotify.info({
					title: 'Fabricante',
			  	text: 'Debe agregar el "Nombre" y el "Logotipo" del Fabricante.'
				});
			}
		},
		showMWCreateReference() {
			this.modalWindows.newReference.name = '';
			this.modalWindows.newReference.reference = '';
			this.magnificPopup('mwNewReference', 'mwNewReferenceName', { 
				name: 'mwNewReferenceBrandId', 
				value: this.brandId
			});
		},
		createReference() {
			if (this.modalWindows.newReference.name && this.modalWindows.newReference.brandId) {
				var btnSave = Ladda.create(document.getElementById('mwNewReferenceBtnSave'));
				var btnSaveClose = Ladda.create(document.getElementById('mwNewReferenceBtnSaveClose'));
				btnSave.start();
				btnSaveClose.start();
				self = this;
				$.ajax({
					method: 'POST',
					url: '/admin/reference/create',
					data: new FormData($('#mwNewReferenceForm')[0]),
					cache: false,
					dataType: 'json',
					processData: false,
					contentType: false
				})
				.done(function(response) {
					btnSave.stop();
					btnSaveClose.stop();
					PNotify.success({
						title: 'Referencia Creada',
						text: 'Referencia de producto "'+
						self.modalWindows.newReference.name+'" creada correctamente.'
					});
					self.brands = response.brands.map(function(brand, index) {
						return { 
							id: brand.id, 
							text: self.ucwords(brand.name), 
							references: brand.references 
						};
					});
					self.brandId = '';
					self.referenceId = '';
					if (close) {
						$.magnificPopup.close();
					}
					else {
						self.modalWindows.newReference.name = '';
						self.modalWindows.newReference.reference = '';
						self.brandId = response.reference.brand_id;
					}
					self.select2(response.reference.brand_id, '#brandId');
					self.select2(response.reference.id, '#referenceId');
				})
				.fail(function(error) {
					btnSave.stop();
					btnSaveClose.stop();
					PNotify.error({
						title: 'ERROR',
						text: 'No se pudo crear la nueva referencia del producto. Por favor invente nuevamente.'
					});
				});
			}	
			else {
				PNotify.info({
					title: 'Nueva Referencia',
					text: 'Debe completar todos los campos.'
				});
			}
		},
		addAttribute() {
			if (this.attribute.id && this.attribute.value && this.attribute.name) {
				var attributeExists = this.attributesList.find(function(attributeItem) {
					return attributeItem.id == this.attribute.id;
				}.bind(this));
				if (!attributeExists) {
					this.attributesList.push({ 
						id: this.attribute.id, 
						name: this.ucwords(this.attribute.name), 
						value: this.attribute.value 
					});
					this.attribute.value = '';
				}
				else {
					PNotify.notice({
						title: 'Atributo Existente',
						text: 'Atributo "'+this.attribute.name+'" ya esta agregado en la lista.'
					});
				}
			}
			else {
				PNotify.info({
					title: 'Atributos',
					text: 'Debe completar los capos en "Atributos del Producto".'
				});
			}
		},
		removeAttributeFromList(id) {
			this.attributesList = this.attributesList.filter(function(attribute) {
				return attribute.id != id;
			});
		},
		addCategory() {
			if (this.categoryId && this.subcategoryId) {
				var categoryExists = this.categoriesList.find(function(categoryItem) {
					return (categoryItem.parentId == this.categoryId && categoryItem.categoryId == this.subcategoryId);
				}.bind(this));
				if (!categoryExists) {
					//id = this.categoriesList.length+1;
					var selectedCategory = this.categories.find(function(category) {
						return category.id == this.categoryId;
					}.bind(this));
					var selectedSubcategory = selectedCategory.subcategories.find(function(subcategory) {
						return subcategory.id == this.subcategoryId;
					}.bind(this));
					this.categoriesList.push({
						id: _.size(self.categoriesList)+1,
						parentId: this.categoryId,
						categoryId: this.subcategoryId,
						category: this.ucwords(selectedCategory.text),
						subcategory: this.ucwords(selectedSubcategory.text),
						slug: selectedSubcategory.slug
					});
				}
				else {
					PNotify.notice({
						title: 'Categoría & SubCategoría',
						text: 'Categoría y SubCategoría seleccionadas ya estan agregadas en la lista.'
					});
				}
			}
			else {
				PNotify.info({
					title: 'Categoría',
					text: 'Debe seleccionar las opciones de Categoría y SubCategoría del producto.'
				});
			}
		},
		removeCategoryFromList(id) {
			this.categoriesList = this.categoriesList.filter(function(category) {
				return category.id != id;
			});
		},
		ucwords(str) {
			return (str + '')
	    .replace(/^(.)|\s+(.)/g, function ($1) {
	      return $1.toUpperCase()
	    });
		}
	},
	watch: {
		brandId(value) {
			if (value) {
				this.references = [];
				var selectedBrand = this.brands.find(function(brand) {
					return brand.id == value;
				});
				this.references = selectedBrand.references.map(function(reference, index) {
					if (!reference.reference) {
						return { 
							brandId: reference.brand_id, 
							id: reference.id, 
							text: this.ucwords(reference.name),
							reference: reference.reference 
						};
					}
					return { 
						brandId: reference.brand_id, 
						id: reference.id, 
						text: this.ucwords(reference.name)+' '+_.toUpper(reference.reference),
						reference: _.toUpper(reference.reference) 
					};
				}.bind(this));
			}
		},
		categoryId(value) {
			if (value) {
				this.subcategories = [];
				var selectedCategory = this.categories.find(function(category) {
					return category.id == value;
				});
				this.subcategories = selectedCategory.subcategories.map(function(subcategory, index) {
					return { 
						parentId: subcategory.parentId, 
						id: subcategory.id, 
						text: this.ucwords(subcategory.text), 
						slug: subcategory.slug 
					};
				}.bind(this));
			}
		},
		'attribute.id': function(value) {
			var selectedAttribute = this.attributes.find(function(attribute) {
				return attribute.id == value;
			});
			this.attribute.name = selectedAttribute.text;
		},
		'product.purchasePrice': function(value) {
			this.product.purchasePrice = number_format(value);
		},
		'product.salePrice': function(value) {
			this.product.salePrice = number_format(value);
		},
		serials() {
			this.product.quantity = (!_.size(this.serials)) ? '' : _.size(this.serials);
		},
		'product.quantity': function(newValue, oldValue) {
			//this.oldQuantity = oldValue;
			/*if (!oldValue)
				return;
			if (newValue == oldValue) {
				return;
			}
			if (this.oldQuantity == newValue)
				return;
			if (this.product.quantity) {
				self = this;
				this.oldQuantity = oldValue;
				var notice = PNotify.notice({
				  title: 'Se necesita Confirmación',
				  text: 'Si cambia la cantidad de productos se eliminara la lista de seriales, ¿desea continuar?',
				  hide: false,
				  stack: {
				      'dir1': 'down',
				      'modal': true,
				      'firstpos1': 25
				  },
				  modules: {
				      Confirm: {
				          confirm: true
				      },
				      Buttons: {
				          closer: false,
				          sticker: false
				      },
				      History: {
				          history: false
				      },
				  }
				});
				notice.on('pnotify.confirm', function() {
				  this.serials = [];
				});
				notice.on('pnotify.cancel', function() {
				  self.product.quantity = oldValue;
				});
			}*/
		}
	}
});
</script>
@stop