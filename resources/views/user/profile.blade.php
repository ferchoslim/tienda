@extends('layout.master')
@section('title', 'Tienda de Tecnologia')
@section('content')
@include('header.top-bar')
@include('header.header')
<div class="container" id='profile' v-cloak>
	<form method="post" action="/perfil" id="form-profile" @@submit.prevent="validateForm('form-profile')" data-vv-scope="form-profile">
		{{ csrf_field() }}
		@if (session('lastUrl'))
		<input type="hidden" name="from" value="checkout">
		@endif
		<div class="personal-info">
			@if(isset($success))
			<br>
			<div class="alert alert-success" role="alert">
				Información de Perfil Actualizada Exitosamente.
			</div>
			@endif
			@if ($errors->any())
				<br>
				<div class="alert alert-danger" role="alert">
					Debe completar todos los campos obligatorios.
				</div>
			@endif
			<h2 class="border h1">Información Personal</h2>
			<div class="row field-row">
				<div class="col-xs-12 col-sm-6">
					<label>Numero de Cedula</label>
					<input type="text" class="le-input" v-model.trim="userInfo.cc" name="code" id="code" v-validate.initial="'required|numeric'">
					<div v-show="errors.has('form-profile.code')" class="is-danger">
	        	<i class="fa fa-warning"></i>
	        	<span >numero de celuda invalido.</span>
          </div>
				</div>
				<div class="col-xs-12 col-sm-6">
					<label>E-Mail</label>
					<input type="text" class="le-input" v-model.trim="userInfo.email" readonly>
				</div>
			</div>
			<div class="row field-row">
				<div class="col-xs-12 col-sm-6">
					<label>Nombre</label>
					<input type="text" class="le-input" name="firstname" id="firstname" 
					v-model.trim="userInfo.firstname" v-validate.initial="'required|alpha_spaces'">
					<div v-show="errors.has('form-profile.firstname')" class="is-danger">
	        	<i class="fa fa-warning"></i>
	        	<span >nombre invalido.</span>
          </div>
				</div>
				<div class="col-xs-12 col-sm-6">
					<label>Apellido</label>
					<input type="text" name="lastname" class="le-input" v-model.trim="userInfo.lastname" v-validate.initial="'required|alpha_spaces'">
					<div v-show="errors.has('form-profile.lastname')" class="is-danger">
	        	<i class="fa fa-warning"></i>
	        	<span >apellido invalido.</span>
          </div>
				</div>
			</div>
			<div class="row field-row">
				<div class="col-xs-12 col-sm-6">
					<label>fecha de nacimiento</label>
					<div class="row field-row" id="birthdate">
						<div class="col-xs-4">
							<input type="text" class="le-input" v-model.trim="userInfo.bday" id="bday" name="bday" placeholder="Día">
						</div>
						<div class="col-xs-4">
							<select class="le-input" name="bmonth" v-model.trim="userInfo.bmonth" id="bmonth">
								<option value="0" style="display: none;">Mes</option>
								<option value="01">Enero</option>
								<option value="02">Febrero</option>
								<option value="03">Marzo</option>
								<option value="04">Abril</option>
								<option value="05">Mayo</option>
								<option value="06">Junio</option>
								<option value="07">Julio</option>
								<option value="08">Agosto</option>
								<option value="09">Septiembre</option>
								<option value="10">Octubre</option>
								<option value="11">Noviembre</option>
								<option value="12">Diciembre</option>
							</select>
						</div>
						<div class="col-xs-4">
							<input type="text" class="le-input" v-model.trim="userInfo.byear" name="byear" id="byear" placeholder="Año">
						</div>
					</div>
					<div v-show="errors.has('form-profile.birthdate')" class="is-danger">
	        	<i class="fa fa-warning"></i>
	        	<span >fecha de nacimiento invalida.</span>
          </div>
					<input type="hidden" name="birthdate" v-model="birthdate" v-validate="'required|date_format:YYYY-MM-DD'">
				</div>
				<div class="col-xs-12 col-sm-6">
					<label>Genero</label>
					<select name="gender" class="le-input" id="gender" v-model.trim="userInfo.gender" v-validate.initial="'required|alpha'">
						<option value="0" style="display: none;">Seleccione</option>
						<option value="m">Hombre</option>
						<option value="f">Mujer</option>
					</select>
					<div v-show="errors.has('form-profile.gender')" class="is-danger">
	        	<i class="fa fa-warning"></i>
	        	<span >campo requerido.</span>
          </div>
				</div>
			</div>
			<div class="row field-row">
				<div class="col-xs-12 col-sm-6">
					<label>nombre de empresa (Opcional)</label>
					<input class="le-input" type="text" id="company" name="company" 
					v-model.trim="userInfo.companyName">
				</div>
			</div>
		</div>
		<div class="personal-info">
			<h2 class="border h1">Domicilio</h2>
				<div class="row field-row">
					<div class="col-xs-12 col-sm-6">
						<label>Departamento</label>
						<select name="department" class="le-input" v-model.trim="selectedDepartment" id="department" v-validate.initial="'required|min:1'">
							<option value="-1" style="display: none;">Seleccione</option>
							<option v-for="department in departments" :value="department.id">@{{ department.name }}</option>
						</select>
						<div v-show="errors.has('form-profile.department')" class="is-danger">
		        	<i class="fa fa-warning"></i>
		        	<span >campo requerido.</span>
	          </div>
					</div>
					<div class="col-xs-12 col-sm-6">
						<label>Ciudad</label>
						<select name="city" class="le-input cities" v-model.trim="selectedCity" id="city" v-validate.initial="'required|min:1'">
							<option value="0" style="display: none;">Seleccione</option>
							<option v-for="city in cities" :value="city.id">@{{ city.name }}</option>
						</select>
						<div v-show="errors.has('form-profile.city')" class="is-danger">
		        	<i class="fa fa-warning"></i>
		        	<span >campo requerido.</span>
	          </div>
					</div>
				</div>
				<div class="row field-row">
					<div class="col-xs-4">
						<label>Barrio</label>
						<input type="text" class="le-input" v-model.trim="userInfo.neighborhood" id="neighborhood"
						name="neighborhood" v-validate.initial="'required'">
						<div v-show="errors.has('form-profile.neighborhood')" class="is-danger">
		        	<i class="fa fa-warning"></i>
		        	<span >campo requerido.</span>
	          </div>
					</div>
					<div class="col-xs-8">
						<label>Dirección</label>
						<input type="text" class="le-input"
						name="address"
						id="address"
						v-model.trim="userInfo.address"
						autocomplete="off"
						v-validate.initial="'required'" 
						placeholder="Carrera 19 #12-32 Edificio Tal Torre 4 Apto 5">
						<div v-show="errors.has('form-profile.address')" class="is-danger">
		        	<i class="fa fa-warning"></i>
		        	<span >campo requerido.</span>
	          </div>
					</div>
				</div>
		<!--<br>
		<a href="javascript:void(0);" id="add-address">Agregar otra dirección</a>-->
		</div>
		<div class="personal-info">
			<h2 class="border h1">Telefono</h2>
			<div class="row field-row user-phones">
				<div class="col-xs-12 col-sm-6">
					<label>Teléfono Móvil</label>
					<input type="text" v-model.trim="userInfo.cellphone" class="le-input phone" id="phone1" name="cellphone" autocomplete="off" v-validate.initial="'required|numeric|min:10|max:10'">
					<div v-show="errors.has('form-profile.cellphone')" class="is-danger">
	        	<i class="fa fa-warning"></i>
	        	<span >numero invalido.</span>
          </div>
				</div>
				<div class="col-xs-12 col-sm-6">
					<label>Teléfono Fijo (opcional)</label>
					<input type="text" v-model.trim="userInfo.phone" class="le-input phone" id="phone" name="phone" autocomplete="off" v-validate="'numeric|min:6'">
					<div v-show="errors.has('form-profile.phone')" class="is-danger">
	        	<i class="fa fa-warning"></i>
	        	<span >numero invalido.</span>
          </div>
				</div>
			</div>
			<!--<br>
			<div class="row field-row">
				<div class="col-xs-12">
					<a href="javascript:void(0);" id="add-phones">Agregar otro Numero de Telefono</a>
				</div>
			</div>-->
			<div class="row field-row">
				<div class="col-xs-12">
					<br>
					<input type="submit" class="le-button huge btn-save" value="Guardar Cambios">
				</div>
			</div>
		</div>
		<br>
	</form>
</div>
@include('footer.footer')
@stop
@section('script2')
@php
	if ($user->birthdate) {
		$birthdate = explode('-', $user->birthdate);
		$day = $birthdate[2];
		$month = $birthdate[1];
		$year = $birthdate[0];
	}
	else {
		$day = '';
		$month = '0';
		$year = '';
	}
@endphp
<script>
	Vue.use(VeeValidate);
	new Vue({
		el: '#profile',
		data: {
			userInfo: {
				email: '{{ $user->email }}',
				firstname: '{{ $user->firstname }}',
				lastname: '{{ $user->lastname }}',
				cc: '{{ $user->code or '' }}',
				bday: '{!! $day or '' !!}',
				bmonth: '{!! $month or '' !!}',
				byear: '{!! $year or '' !!}',
				gender: '{{ $user->gender or 0 }}',
				department: '{{ $user->address->state or '' }}',
				city: '{{ $user->address->city or '' }}',
				address: '{{ $user->address->address or '' }}',
				neighborhood: '{{ $user->address->neighborhood or '' }}',
				phone: '{{ $user->address->phone or '' }}',
				cellphone: '{{ $user->address->cellphone or '' }}',
				companyName: '{{ $user->company or '' }}'
			},
			colombiaJson: [],
			cities: [],
			departments: [],
			selectedDepartment: -1,
			selectedCity: 0,
		},
		methods: {
			validateForm(scope) {
				this.$validator.validateAll(scope).then((result) => {
					if (result) {
						$('#form-profile').submit();
					}
				});
			}
		},
		computed: {
			birthdate() {
				return this.userInfo.byear+'-'+this.userInfo.bmonth+'-'+this.userInfo.bday;
			}
		},
		watch: {
			selectedDepartment(id) {
				vm = this;
				vm.cities = [];
				$.each(vm.colombiaJson[id].ciudades, (i, v) => {
					vm.cities.push({ id: i, name: v});
				});
			}
		},
		mounted() {
			vm = this;
			$.get('/colombia.json')
				.done((response) => {
					vm.colombiaJson = response;
					$.each(response, (i, v) => {
						vm.departments.push({ id: v.id, name: v.departamento });
					});
					if (vm.userInfo.department != '') {
						vm.selectedDepartment = vm.userInfo.department;
						vm.selectedCity = vm.userInfo.city
					}
				})
				.fail((error) => {
					toastr.error('Fallo al Cargar Lista de Departamentos');
				});
		}
	});
</script>
@stop