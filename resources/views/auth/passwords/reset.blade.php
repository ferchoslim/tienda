@extends('layout.master')
@section('title', 'Tienda de Tecnologia')
@section('content')
@include('header.top-bar')
@include('header.header-two')
<main id="authentication" class="inner-bottom-md" v-cloak>
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<section class="section sign-in inner-right-xs">
					<h2 class="bordered">Cambiar Contraseña</h2>
					@if ($errors->any())
					<div class="alert alert-danger">
							E-mail no encontrado.
					</div>
					@endif
					<form role="form" method="POST" action="/resetear/contrasena" id="form-reset" class="login-form cf-style-1" @@submit.prevent="validateForm('form-reset')" data-vv-scope="form-reset">
						{{ csrf_field() }}
						<input type="hidden" name="token" value="{{ $token }}">
						<div class="field-row">
              <label>E-mail</label>
              <input v-validate.initial="'required|email'" v-model.trim="resetInfo.email" type="email" id="email" name="email" class="le-input">
              <div v-show="errors.has('form-reset.email')" class="is-danger">
              	<i class="fa fa-warning"></i>
              	<span>e-mail invalido.</span>
              </div>
            </div>
            <div class="field-row">
              <label>Contraseña</label>
              <input type="password" name="password" id="password" class="le-input" v-validate.initial="'required|min:6|max:16'" v-model.trim="resetInfo.password">
              <div v-show="errors.has('form-reset.password')" class="is-danger">
              	<i class="fa fa-warning"></i>
              	<span>No puedes dejar este campo en blanco.</span>
              </div>
          	</div>
	          <div class="field-row">
              <label>Confirmar Contraseña</label>
              <input type="password" name="password_confirmation" id="password_confirmation" class="le-input" v-validate.initial="'required|min:6|max:16|confirmed:password'" v-model.trim="resetInfo.password_confirmation">
              <div v-show="errors.has('form-reset.password_confirmation')" class="is-danger">
            	<i class="fa fa-warning"></i>
              	<span>Las contraseñas no coinciden. ¿Quieres volver a intentarlo?</span>
              </div>
	          </div>
            <div class="buttons-holder">
                <button type="submit" id="btn-reset" class="le-button huge">Resetear Contraseña</button>
            </div>
					</form>
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
			resetInfo: {
				email: '{{ $email or old('email') }}',
				password: '',
				password_confirmation: ''
			}
		},
		mounted() {
			$('#email').focus();
		},
		methods: {
			validateForm(scope) {
				this.$validator.validateAll(scope).then((result) => {
					if (result) {
						$('#form-reset').submit();
					}
				});
			}
		}
	});
</script>
@stop