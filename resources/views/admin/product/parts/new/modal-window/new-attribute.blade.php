<modal-window 
	v-on:save="createAttribute" 
	id="mwNewAttribute" 
	title="Nuevo Atributo" 
	icon="fa fa-plus-square" 
	name="mwNewAttributeForm"
	token="{{ csrf_token() }}">
	<input-text
		slot="1"
		v-on:enter="createAttribute"
		id="mwNewAttributeName"
		v-model="modalWindows.newAttribute.name"
		name="name"
		placeholder="Nombre de Atributo"
		tooltip="Nombre del Atributo del producto. Por ejemplo: Color, Capacidad, Material, Tamaño."
		icon="glyphicon glyphicon-pushpin">
	</input-text>
</modal-window>