<modal-window 
	v-on:save="createSubCategory" 
	id="mwNewSubCategory" 
	title="Nueva SubCategoría" 
	icon="fa fa-plus-square" 
	name="mwNewSubCategoryForm"
	token="{{ csrf_token() }}">
	<select2 
		id="mwNewSubCategoryCategoryId" 
		name="id" 
		v-model="modalWindows.newSubCategory.id" 
		:options="categories" 
		placeholder="Categorías" 
		slot="1">
	</select2>
	<input-text
		slot="2"
		v-on:enter="createSubCategory"
		id="mwNewSubCategoryName"
		v-model.trim="modalWindows.newSubCategory.name"
		name="name"
		placeholder="Nombre de la SubCategoría"
		tooltip="SubCategoría en donde se almacenara el producto. Por jemplo: Samsung, Baterias, Protectores..."
		icon="fa fa-list">
	</input-text>
</modal-window>