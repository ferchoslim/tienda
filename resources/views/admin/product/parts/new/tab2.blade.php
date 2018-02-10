<div id="tab2" class="tab-pane"><!--tab2-->
	<div id="spy1" class="section-divider mb20"><span>Estado del Producto & Tipo</span></div>
	<div class="section row"><!--tipos de producto-->
		<div id="state_field" class="col-md-6">
			<span>&nbsp;</span>
			<select2 
				id="stateId" 
				name="stateId" 
				v-model="product.stateId"
				v-validate="'required'"
				:options="state" 
				placeholder="Estado">
			</select2>
			<p class="small text-danger" v-show="errors.has('state')">
				<i class="fa fa-exclamation-triangle"></i>
				<span>No puedes dejar este campo en blanco.</span>
			</p>
		</div>
		<div id="type_field" class="col-md-6">
			<a href="javascript:void()" v-on:click.prevent="showMWCreateType">+Nuevo Tipo</a>
			<select2 
				id="typeId" 
				name="typeId" 
				v-model="product.typeId"
				v-validate="'required'"
				:options="types" 
				placeholder="Tipos">
			</select2>
			<p class="small text-danger" v-show="errors.has('typeId')">
				<i class="fa fa-exclamation-triangle"></i>
				<span>No puedes dejar este campo en blanco.</span>
			</p>
		</div>
		</div><!--estado del producto-->
		<div id="spy1" class="section-divider mb20"><span>Atributos del Producto</span></div>
		<a href="javascript:void(0)" v-on:click.prevent="showMWCreateAttribute">+Nuevo Atributo</a>
	<div class="section row">
		<div class="col-md-6">
			<select2 
				id="attributeId" 
				name="attributeId" 
				v-model="attribute.id"
				:options="attributes" 
				placeholder="Atributos">
			</select2>
		</div><!--atributo-->
		<div class="col-md-6">
			<input-text 
				id="attriuteValue"
				v-on:enter="addAttribute"
				v-model.trim="attribute.value"
				name="attributeValue" 
				placeholder="Valor de Atributo" 
				icon="fa fa-key">
			</input-text>
		</div><!--valor-->
	</div><!--atributo & valor-->
	<div class="section text-right">
		<button type="button" class="btn btn-primary btn-xs" v-on:click.prevent="addAttribute">Agregar</button>
	</div><!--boton guardar-->
	<div id="spy1" class="section-divider mb20"><span>Lista de Atributos Seleccionados</span></div>
	<div class="panel">
		<div class="panel-menu">
			<div class="table-responsive of-y-a">
				<table class="table attr-table">
					<thead>
						<tr class="bg-dark">
							<th>Atributo</th>
							<th>Valor</th>
							<th class="text-right">Opciones</th>
						</tr>
					</thead>
					<tbody><!--lista de atributos-->
						<tr v-for="(attributeItem, index) in attributesList">
							<td><b><span class="attr_name">@{{ attributeItem.name }}</span></b></td>
							<td><b><span class="attr_value">@{{ attributeItem.value }}</span></b></td>
							<td>
								<div class="text-right">
									<button 
										v-on:click="removeAttributeFromList(attributeItem.id)" 
										type="button" class="btn btn-danger btn-xs">X</button>
								</div>
							</td>
						</tr>
					</tbody><!--lista de atributos-->
				</table>
			</div>
		</div>
	</div><!--panel-->
</div><!--tab2-->