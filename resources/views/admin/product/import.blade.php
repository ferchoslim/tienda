@extends('admin.layout.master')
@section('title', 'Administrador')
@section('content')
  @include('admin.header')
  @include('admin.side-menu')
	<section id="content_wrapper">
		<section id="content" class="table-layout">
			<form id="form-import">
				{{ csrf_field() }}
				<div class="tray tray-center" style="height: 1029px;">
					<div class="panel mb25 mt5">
						<div class="panel-heading">
							<span class="panel-title hidden-xs">Importar Excel</span>
						</div>
						<div class="panel-body p20 admin-form theme-primary">
							<div class="section">
								<a href="{{ asset('xls/tienda.xlsx') }}">Descargar Plantilla</a>
							</div>
							<div class="section">
									<div class="file-button">
										<label class="field prepend-icon append-button file">
											<span class="button btn-primary">Seleccionar</span>
											<input type="file" id="excel_import" name="excel_import" onchange="document.getElementById('uploader').value = this.value;" class="gui-file">
											<input id="uploader" type="text" placeholder="Seleccione Archivo Excel" class="gui-input">
											<label class="field-icon"><i class="fa fa-upload"></i></label>
										</label>
									</div>
							</div>
							<div class="section text-right">
								<button type="button" class="btn btn-primary ladda-button" data-style="expand-left" id="btn-save">
									<span class="ladda-label">Importar</span>
								</button>
							</div>
						</div>
					</div>
				</div>
			</form>
		</section>
	</section>
@stop
@section('script')
<script>
	function validate(el) {
		el.parent().addClass('bounce animated');
			var animation = setTimeout(function() { 
				el.parent().removeClass('bounce animated'); 
		}, 1000);
	}
	$(function() {
		var btn_save = Ladda.create(document.getElementById('btn-save'));
		$('#btn-save').click(function(e) {
			if ($('#excel_import').val() == "") {
	  		validate($('#excel_import'));
	  		return;
	  	}
			btn_save.start();
	    $.ajax({
				method: "POST",
				url: "/admin/excel/import",
				data: new FormData($('#form-import')[0]),
				cache: false,
				dataType: "json",
				processData: false,
				contentType: false
			})
			.done(function(data) {
				if (data.response == "success") {
					toastr.success('DATOS IMPORTADOS CORRECTAMENTE.');
					toastr.info('PRODUCTOS IMPORTADOS: '+data.imported);
					toastr.warning('PRODUCTOS OMITIDOS: '+data.omited);
					btn_save.stop();
				}
				if (data.response == "file_error") {
					toastr.warning('ARCHIVO DE IMPORTACION INVALIDO.');
					btn_save.stop();
				}
			})
			.fail(function(data) {
				toastr.error('ERROR-061: IMPORTAR DATOS.');
				btn_save.stop();
			});
		});
	});
</script>
@stop