<div id="tab3" class="tab-pane">
		<div id="spy1" class="section-divider mb20"><span>Categorías del Producto</span></div>
		<div class="section row">
			<div class="col-md-6">
				<a href="javascript:void(0)" v-on:click.prevent="showMWCreateCategory">+Nueva Categoría</a>
				<select2 
					id="categoryId" 
					name="categoryId" 
					v-model="categoryId" 
					:options="categories" 
					placeholder="Categorías">
				</select2>
			</div>
			<div class="col-md-6">
				<a href="javascript:void(0)" v-on:click.prevent="showMWCreateSubCategory">+Nueva SubCategoría</a>
				<select2 
					id="subcategoryId" 
					name="subcategoryId" 
					v-model="subcategoryId"
					:options="subcategories" 
					placeholder="SubCategorías">
				</select2>
			</div>
		</div>
		<div class="section text-right">
			<button v-on:click="addCategory" type="button" class="btn btn-xs btn-primary" id="btn-add-category">Agregar</button>
		</div>
		<div id="spy1" class="section-divider mb20">
			<span>Lista de Categorías y Rutas</span>
		</div>
		<div class="panel">
			<div class="panel-menu">
				<div class="table-responsive of-y-a">
					<input type="hidden" name="cat_obj" id="cat_obj" value="">
					<table class="table category-table">
						<thead>
							<tr class="bg-dark">
								<th>Categoría</th>
								<th>SubCategoría</th>
								<th>Slug</th>
								<th class="text-right">Opciones</th>
							</tr>
						</thead>
					<tbody>	
						<tr 
							v-for="categoryItem in categoriesList"
							:id="'categoryItem'+categoryItem.id">
							<td><b>@{{ categoryItem.category }}</b></td>
							<td><b>@{{ categoryItem.subcategory }}</b></td>
							<td><b>@{{ categoryItem.slug }}</b></td>
							<td>
								<div class="text-right">
									<button type="button" class="btn btn-danger btn-xs" v-on:click.prevent="removeCategoryFromList(categoryItem.id)">X</button>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>