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
					<h2 class="bordered">Iniciar Sesión</h2>
					<p>Hola, Bienvedi@</p>
					<!--<div class="social-auth-buttons">
						<div class="row">
							<div class="col-md-6">
								<button class="btn-block btn-lg btn btn-facebook"><i class="fa fa-facebook"></i>Iniciar Sesión con Facebook</button>
							</div>
						</div>
					</div>-->
					@if (session('invalidCredentials'))
					<div class="alert alert-danger" role="alert">
						E-mail o Contraseña Inválidos.
					</div>
					@endif
					@if (session('hasTooManyLoginAttempts'))
					<div class="alert alert-danger" role="alert">
						Demasiados intentos fallidos. Intente más tarde.
					</div>
					@endif
					<form method="POST" id="form-login" class="login-form cf-style-1" @@submit.prevent="validateForm('form-login')" data-vv-scope="form-login">
						{{ csrf_field() }}
						<div class="field-row">
              <label>E-mail</label>
              <input v-validate="'required|email'" v-model.trim="loginInfo.email" type="email" id="email" name="email" class="le-input">
              <div v-show="errors.has('form-login.email')" class="is-danger">
              	<i class="fa fa-warning"></i>
              	<span>e-mail invalido.</span>
              </div>
          	</div>
            <div class="field-row">
                <label>Contraseña</label>
                <input v-validate="'required|min:6|max:16'" v-model.trim="loginInfo.password" type="password" id="password" name="password" class="le-input" autocomplete="new-password">
                <div v-show="errors.has('form-login.password')" class="is-danger">
	              	<i class="fa fa-warning"></i>
	              	<span >contraseña invalida.</span>
	              </div>
            </div>
            <div class="field-row clearfix">
            	<span class="pull-left">
            		<label class="content-color"><input type="checkbox" name="remember" class="le-checbox auto-width inline" checked="true"> <span class="bold">Recuerdame</span></label>
            	</span>
            	<span class="pull-right">
            		<a href="/resetear" class="content-color bold">¿Olvido su contraseña?</a>
            	</span>
            </div>
            <div class="buttons-holder">
                <button type="submit" id="btn-login" class="le-button huge">Iniciar Sesión en CeluClock</button>
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
			loginInfo: {
				email: '{{ old('email') }}',
				password: ''
			}
		},
		mounted() {
			$('#email').focus();
		},
		methods: {
			validateForm(scope) {
				this.$validator.validateAll(scope).then((result) => {
					if (result) {
						$('#form-login').submit();
					}
				});
			}
		}
	});
</script>
@stop