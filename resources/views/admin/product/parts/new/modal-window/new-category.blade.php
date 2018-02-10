<modal-window 
	v-on:save="createCategory" 
	id="mwNewCategory" 
	title="Nueva Categoría" 
	icon="fa fa-plus-square" 
	name="mwNewCategoryForm"
	token="{{ csrf_token() }}">
	<input-text
		slot="1"
		v-on:enter="createCategory"
		id="mwNewCategoryName"
		v-model.trim="modalWindows.newCategory.name"
		name="name"
		placeholder="Nombre de la Categoría"
		tooltip="Categoría en donde se almacenara el producto. Por ejemplo: Teléfonos, Promociones, Perfumes."
		icon="fa fa-list">
	</input-text>
</modal-window>