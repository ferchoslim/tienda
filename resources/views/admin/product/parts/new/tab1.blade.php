<div id="tab1" class="tab-pane active">
	<div id="spy1" class="section-divider mb20">
		<span>Informacion General</span>
	</div>
	<div class="col-md-6 col-lg-5"><!--images section-->
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
	<div class="col-md-6 col-lg-7">
		<div class="section">
			<input-text 
				id="code"
				v-on:blur="codeCheck"
				v-on:enter="codeCheck"
				v-model.trim="product.code" 
				name="code" 
				placeholder="Codigo UPC/EAN" 
				tooltip="Código de barras del producto (UPC/EAN), sera generado automáticamente si se deja en blanco" 
				icon="fa fa-barcode">
			</input-text>
		</div>
		<div class="section">
			<select2 
				id="warehouseId" 
				name="warehouseId" 
				v-model="warehouseId" 
				v-validate="'required'"
				:options="warehouses" 
				template="on"
				placeholder="Bodegas">
			</select2>
			<p class="small text-danger" v-show="errors.has('warehouseId')">
				<i class="fa fa-exclamation-triangle"></i>
				<span>No puedes dejar este campo en blanco.</span>
			</p>
		</div>
		<div class="section row">
			<div class="col-md-6">
				<a href="javascript:void()" v-on:click.prevent="showMWCreateBrand">+Nuevo Fabricante</a>
				<div id="brand_field">
					<select2 
						id="brandId" 
						name="brandId" 
						v-model="brandId" 
						v-validate="'required'"
						:options="brands" 
						placeholder="Fabricantes">
					</select2>
					<p class="small text-danger" v-show="errors.has('brandId')">
						<i class="fa fa-exclamation-triangle"></i>
						<span>No puedes dejar este campo en blanco.</span>
					</p>
				</div>
			</div>
			<div class="col-md-6">
				<a href="javascript:void(0)" v-on:click.prevent="showMWCreateReference">+Nueva Referencia</a>
				<div id="reference_field">
					<select2 
						id="referenceId" 
						name="referenceId" 
						v-model="referenceId" 
						v-validate="'required'"
						:options="references" 
						placeholder="Referencias">
					</select2>
					<p class="small text-danger" v-show="errors.has('referenceId')">
						<i class="fa fa-exclamation-triangle"></i>
						<span>No puedes dejar este campo en blanco.</span>
					</p>
				</div>
			</div>
		</div>
		<div class="section" id="name_field">
			<input-text 
				id="name"
				v-model.trim="product.name"
				v-validate="'required|max:200'" 
				name="name" 
				placeholder="Nombre de Producto" 
				tooltip="Nombre del producto con las características más importantes. Por ejemplo: Apple iPhone 7 Dorado 32GB" 
				icon="fa fa-tag">
			</input-text>
			<p class="small text-danger" v-show="errors.has('name')">
				<i class="fa fa-exclamation-triangle"></i>
				<span>No puedes dejar este campo en blanco.</span>
			</p>
		</div>
		<div class="section" id="supplier_field">
			<select2 
				name="supplierId" 
				id="supplierId" 
				v-model="supplierId" 
				:options="suppliers" 
				placeholder="Proveedores">
			</select2>
			<p class="small text-danger" v-show="errors.has('supplierId')">
				<i class="fa fa-exclamation-triangle"></i>
				<span>No puedes dejar este campo en blanco.</span>
			</p>
		</div>
		<div class="section row">
			<div class="col-md-4" id="purchase_price_field">
				<input-text 
					id="purchasePrice"
					v-model.trim="product.purchasePrice" 
					v-validate="'required'"
					name="purchasePrice" 
					placeholder="Precio de Compra" 
					tooltip="Precio en el que se adquirió/compro el producto" 
					icon="fa fa-money">
				</input-text>
				<p class="small text-danger" v-show="errors.has('purchasePrice')">
					<i class="fa fa-exclamation-triangle"></i>
					<span>No puedes dejar este campo en blanco.</span>
				</p>
			</div>
			<div class="col-md-4" id="sale_price_field">
				<input-text 
					id="salePrice"
					v-model.trim="product.salePrice" 
					v-validate="'required'"
					name="salePrice" 
					placeholder="Precio de Venta" 
					tooltip="Precio de venta final del producto" 
					icon="fa fa-usd">
				</input-text>
				<p class="small text-danger" v-show="errors.has('salePrice')">
					<i class="fa fa-exclamation-triangle"></i>
					<span>No puedes dejar este campo en blanco.</span>
				</p>
			</div>
			<div class="col-md-4" id="quantity_field">
				<input-text 
					id="quantity"
					v-model.trim="product.quantity" 
					v-validate="'required|numeric'"
					name="quantity" 
					placeholder="Cantidad" 
					icon="fa fa-th">
				</input-text>
				<p class="small text-danger" v-show="errors.has('quantity')">
					<i class="fa fa-exclamation-triangle"></i>
					<span>No puedes dejar este campo en blanco.</span>
				</p>
			</div>
		</div>
		<div class="section">
			<label class="field prepend-icon">
				<textarea 
					id="short_description" 
					name="short_description" 
					placeholder="Descripción Corta del Producto" 
					class="gui-textarea br-light bg-light" 
					v-model.trim="product.shortDescription">
					</textarea>
				<label for="comment" class="field-icon"><i class="fa fa-comments"></i></label>
			</label>
		</div>
		<div class="section">
			<label class="field prepend-icon">
				<textarea 
					id="full_description" 
					name="full_description" 
					placeholder="Descripción Completa del Producto" 
					class="gui-textarea br-light bg-light" 
					v-model.trim="product.fullDescription">
				</textarea>
				<label for="comment" class="field-icon"><i class="fa fa-comments"></i></label>
			</label>
		</div>
		<div class="section">
			<label class="switch ib switch-primary mt10">
      <input id="product_actived" type="checkbox" name="productActive" checked>
      <label for="product_actived" data-on="SI" data-off="NO"></label> <span>Producto Activado</span>
    </label>
		</div>
	</div>
</div>