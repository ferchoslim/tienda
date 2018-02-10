<modal-window 
	v-on:save="createReference" 
	id="mwNewReference" 
	title="Nueva Referencia" 
	icon="fa fa-plus-square" 
	name="mwNewReferenceForm"
	token="{{ csrf_token() }}">
	<select2 
		id="mwNewReferenceBrandId" 
		name="id" 
		v-model="modalWindows.newReference.brandId" 
		:options="brands" 
		placeholder="Fabricantes" 
		slot="1">
	</select2>
	<input-text
		v-on:enter="createReference"
		slot="2"
		id="mwNewReferenceName"
		v-model.trim="modalWindows.newReference.name"
		name="name"
		placeholder="Nombre de comercial del Producto"
		tooltip="Nombre Comercial del Producto, por ejemplo: iPhone 7, Samsung Galaxy S8, Motorola G5."
		icon="glyphicon glyphicon-screenshot">
	</input-text>
	<input-text
		v-on:enter="createReference"
		slot="3"
		id="mwNewReferenceReference"
		v-model.trim="modalWindows.newReference.reference"
		name="reference"
		placeholder="Rerencia del Producto (opcional)"
		tooltip="Referencia del Producto, por ejemplo: A1778, SM-G955F, XT1671."
		icon="fa fa-paperclip">
	</input-text>
</modal-window>