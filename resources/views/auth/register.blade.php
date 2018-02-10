@extends('layout.master')
@section('title', 'Tienda de Tecnologia')
@section('content')
@include('header.top-bar')
@include('header.header-two')
<main id="authentication" class="inner-bottom-md" v-cloak>
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<section class="section register inner-left-xs">
					<h2 class="bordered">Crear una Cuenta</h2>
					<p>Cree su cuenta para CeluClock</p>
					@if ($errors->any())
						<div class="alert alert-danger" role="alert">
							<ul>
							@if ($errors->has('email'))
							<li>Ese E-Mail ya está en uso. Prueba con otro.</li>
							@endif
							@if ($errors->has('password'))
							<li>Las contraseñas no coinciden. ¿Quieres volver a intentarlo?</li>
							@endif
							</ul>
						</div>
					@endif
					<form role="form" method="POST" id="form-register" class="register-form cf-style-1" @@submit.prevent="validateForm('form-register')" data-vv-scope="form-register">
						{{ csrf_field() }}
						<div class="field-row">
              <label>Nombres</label>
              <input type="text" name="firstname" id="firstname" class="le-input" v-validate.initial="'required|alpha_spaces'" 
              v-model.trim="registerInfo.firstname" placeholder="Juan Manuel">
              <div v-show="errors.has('form-register.firstname')" class="is-danger">
              	<i class="fa fa-warning"></i>
              	<span>No puedes dejar este campo en blanco.</span>
              </div>
          	</div>
          	<div class="field-row">
              <label>Apellidos</label>
              <input type="text" name="lastname" id="lastname" class="le-input" v-validate.initial="'required|alpha_spaces'" 
              v-model.trim="registerInfo.lastname" placeholder="Pérez Perea">
              <div v-show="errors.has('form-register.lastname')" class="is-danger">
              	<i class="fa fa-warning"></i>
              	<span>No puedes dejar este campo en blanco.</span>
              </div>
          	</div>
						<div class="field-row">
	            <label>E-mail</label>
	            <input type="email" name="email" id="email" class="le-input" v-validate.initial="'required|email'" 
	            v-model.trim="registerInfo.email" placeholder="juanma@correo.com">
	            <div v-show="errors.has('form-register.email')" class="is-danger">
              	<i class="fa fa-warning"></i>
              	<span>No puedes dejar este campo en blanco.</span>
              </div>
	        	</div>
						<div class="field-row">
              <label>Contraseña</label>
              <input type="password" name="password" id="password" class="le-input" v-validate.initial="'required|min:6|max:16'" v-model.trim="registerInfo.password">
              <div v-show="errors.has('form-register.password')" class="is-danger">
              	<i class="fa fa-warning"></i>
              	<span>No puedes dejar este campo en blanco.</span>
              </div>
          	</div>
	          <div class="field-row">
              <label>Confirmar Contraseña</label>
              <input type="password" name="password_confirmation" id="password_confirmation" class="le-input" v-validate.initial="'required|min:6|max:16|confirmed:password'" v-model.trim="registerInfo.password_confirmation">
              <div v-show="errors.has('form-register.password_confirmation')" class="is-danger">
            	<i class="fa fa-warning"></i>
              	<span>Las contraseñas no coinciden. ¿Quieres volver a intentarlo?</span>
              </div>
	          </div>
	          <div class="buttons-holder">
	              <button type="submit" id="btn-register" class="le-button huge">Crear Cuenta CeluClock</button>
	          </div>
					</form>
				</section>
			</div>
			<div class="col-md-6">
				<section class="section register inner-left-xs">
				<h2 class="semi-bold">Regístrese para disfrutar de todos los beneficios:</h2>
					<ul class="list-unstyled list-benefits">
						<li><i class="fa fa-check primary-color"></i>Rapidez en las compras</li>
						<li><i class="fa fa-check primary-color"></i>Facilidad a la hora de comprar</li>
						<li><i class="fa fa-check primary-color"></i>Todo 100% Garantizado</li>
					</ul>
				</section>
			</div>
		</div>
	</div>
</main>
@include('footer.footer')
@stop
@section('script2')
<script>
	Vue.use(VeeValidate);
	new Vue({
		el: '#authentication',
		data: {
			registerInfo: {
				firstname: '{{ old('firstname') }}',
				lastname: '{{ old('lastname') }}',
				email: '{{ old('email') }}',
				password: '',
				password_confirmation: ''
			}
		},
		mounted() {
			$('#fistname').focus();
		},
		methods: {
			validateForm(scope) {
				this.$validator.validateAll(scope).then((result) => {
					if (result) {
						$('#form-register').submit();
					}
				});
			}
		}
	});
</script>
@stop