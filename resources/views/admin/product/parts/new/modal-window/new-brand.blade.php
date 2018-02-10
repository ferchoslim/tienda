<modal-window 
	v-on:save="createBrand" 
	id="mwNewBrand" 
	title="Nuevo Fabricante" 
	icon="fa fa-plus-square" 
	name="mwNewBrandForm"
	token="{{ csrf_token() }}">
	<input-text
		slot="1"
		id="mwNewBrandName"
		v-on:enter="createBrand"
		v-model.trim="modalWindows.newBrand.name"
		name="name"
		placeholder="Nombre de Fabricante"
		tooltip="Nombre del Fabricante, por ejemplo: Apple, Samsung, Motorola."
		icon="glyphicon glyphicon-tag">
	</input-text>
	<div class="file-button" slot="2">
		<label class="field prepend-icon append-button file">
			<span class="button btn-primary">Seleccionar</span>
			<input 
				type="file" 
				accept="image/*" 
				name="image" 
				onchange="$('#mwNewBrandImage').val(this.value);console.log(this.value);"
				class="gui-file">
			<input 
				id="mwNewBrandImage" 
				type="text" 
				placeholder="Logo del Fabricante" 
				class="gui-input">
			<label class="field-icon"><i class="fa fa-upload"></i></label>
		</label>
	</div>
</modal-window>