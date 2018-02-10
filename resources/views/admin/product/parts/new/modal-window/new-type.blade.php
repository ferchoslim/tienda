<modal-window 
	v-on:save="createType" 
	id="mwNewType" 
	title="Nuevo Tipo de Producto" 
	icon="fa fa-plus-square" 
	name="mwNewTypeForm"
	token="{{ csrf_token() }}">
	<input-text
		slot="1"
		v-on:enter="createType"
		id="mwNewTypeName"
		v-model.trim="modalWindows.newType.name"
		name="name"
		placeholder="Nombre de Tipo de Producto"
		tooltip="Nombre de tipo de producto debe ir en plural. Por ejemplo: telefonos, perfumes, audifonos."
		icon="glyphicon glyphicon-screenshot">
	</input-text>
</modal-window>