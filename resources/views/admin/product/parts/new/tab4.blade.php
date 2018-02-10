<div id="tab4" class="tab-pane">
	<div id="spy1" class="section-divider mb20">
		<span>Seriales</span>
	</div>
	<div class="section row">
		<div class="col-md-12">
			<input-text 
				id="serial"
				v-model.trim="product.serial"
				name="serial" 
				placeholder="Numero de Serie del Producto" 
				tooltip="Numero de Seria del Producto. Por Ejemplo: IMEI, S/N, CODE, SERIAL" 
				icon="fa fa-barcode">
			</input-text>
		</div>
	</div>
	<div class="section text-right">
		<button v-on:click="addSerial" type="button" class="btn btn-xs btn-primary" id="btn-add-category">Agregar</button>
	</div>
	<div id="spy1" class="section-divider mb20">
			<span>Lista de Categorías y Rutas</span>
		</div>
		<div class="panel"><!--panel-->
			<div class="panel-menu">
				<div class="table-responsive of-y-a">
					<input type="hidden" name="cat_obj" id="cat_obj" value="">
					<table class="table category-table">
						<thead>
							<tr class="bg-dark">
								<th>Numero de Serie</th>
								<th class="text-right">Opciones</th>
							</tr>
						</thead>
					<tbody>	
						<tr 
							v-for="serial in serials"
							:id="'serial'">
							<td><b>@{{ serial }}</b></td>
							<td>
								<div class="text-right">
									<button type="button" class="btn btn-danger btn-xs" v-on:click.prevent="removeSerialFromList(serial)">X</button>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div><!--panel-->
</div>