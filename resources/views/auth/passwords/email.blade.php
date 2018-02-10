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
					<h2 class="bordered">Recordar Contraseña</h2>
					@if (session('status'))
          <div class="alert alert-success">
          	Contraseña envida al E-Mail.
          </div>
          @endif
					@if ($errors->any())
					<div class="alert alert-danger">
							E-mail no encontrado.
					</div>
					@endif
					<form role="form" method="POST" id="form-reset" class="login-form cf-style-1" @@submit.prevent="validateForm('form-reset')" data-vv-scope="form-reset">
					{{ csrf_field() }}
						<div class="field-row">
              <label>E-mail</label>
              <input v-validate="'required|email'" v-model.trim="resetInfo.email" type="email" id="email" name="email" class="le-input">
              <div v-show="errors.has('form-reset.email')" class="is-danger">
              	<i class="fa fa-warning"></i>
              	<span>e-mail invalido.</span>
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
				email: '{{ old('email') }}'
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