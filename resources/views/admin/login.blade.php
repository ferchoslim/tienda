<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Site Title-->
    <title>CeluClock - Panel de Administracion</title>
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <!-- Stylesheets-->
    <link rel="icon" href="{{ asset('images/favicon2.ico') }}" type="image/x-icon">
    
    <link rel="stylesheet" type="text/css" href="{{ asset('css/theme.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('css/animate.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('css/ladda-themeless.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/toastr.min.css') }}">
  </head>
  <body class="external-page sb-l-c sb-r-c">
    <!-- Start: Main-->
    <div id="main" v-cloak>
      <!-- Start: Content-Wrapper-->
      <section id="content_wrapper">
        <!-- Begin: Content-->
        <section id="content">
          <div id="login" class="admin-form theme-info mw500 animated bounceInDown">
            <div class="text-center">
              <h1 class="celuclock-title2">CELUCLOCK</h1>
            </div>
            <!-- Login Panel/Form-->
            <div class="panel mt30 mb25">
              <form id="form-login">
                {{ csrf_field() }}
                <div class="panel-body bg-light p25 pb15">
                  <!-- Username Input-->
                  <div class="section">
                    <label class="field-label text-muted fs18 mb10">E-Mail</label>
                    <label class="field prepend-icon">
                      <input id="email" name="email" type="email" class="gui-input" v-model.trim="email">
                      <label for="username" class="field-icon"><i class="fa fa-at"></i></label>
                    </label>
                  </div>
                  <!-- Password Input-->
                  <div class="section">
                    <label class="field-label text-muted fs18 mb10">Contraseña</label>
                    <label class="field prepend-icon">
                      <input id="password" autocomplete="new-password" type="password" name="password" class="gui-input" v-model.trim="password">
                      <label class="field-icon"><i class="fa fa-lock"></i></label>
                    </label>
                  </div>
                </div>
                <div class="panel-footer clearfix">
                  <button id="btn-login" class="button btn-primary ladda-button mr10 pull-right" data-style="zoom-in" v-on:click.prevent="logIn">
                    <span class="ladda-label">Entrar</span>
                  </button>
                  <label class="switch ib switch-primary mt10">
                    <input id="remember" type="checkbox" name="remember" checked="">
                    <label for="remember" data-on="SI" data-off="NO"></label> <span>Recuerdame</span>
                  </label>
                </div>
              </form>
            </div>
          </div>
        </section>
      </section>
    </div>
    <!-- core scripts-->
    <script src="{{ asset('js/core.min.js') }}"></script>
    <!-- Theme Javascript-->
    <script src="{{ asset('js/utility.js') }}"></script>
    <script src="{{ asset('js/main.js') }}"></script>
    <script src="{{ asset('js/toastr.min.js') }}"></script>
    <script src="{{ asset('js/vue.min.js') }}"></script>
    <!-- Page Javascript-->
    <script type="text/javascript">
      var login = new Vue({
        el: '#main',
        data: {
          email: '',
          password: '',
        },
        methods: {
          logIn: function() {
            if (this.email == '' || this.password == '' || !this.validEmail(this.email)) {
              this.validate($('#panel'));
              return;
            }
            var btn_login = Ladda.create(document.getElementById('btn-login'));
            btn_login.start();
            var form_data = $('#form-login').serialize();
            $.post('/admin/login', form_data)
              .done(function(data) {
                if (data.response == false) {
                  btn_login.stop();
                  this.validate($('#panel'));
                }
                else if(data.response == 'HAS_TOO_MANY_LOGIN_ATTEMPTS') {
                  toastr.error('ERROR: Demasiados intentos fallidos.');
                  btn_login.stop();
                }
                else {
                  window.location.replace("/admin");
                }
              }.bind(this))
              .fail(function(data) {
                btn_login.stop();
                this.validate($('#panel'));
                toastr.error('ERROR: Fallo al iniciar sesión.');
            }.bind(this));
          },
          validEmail: function(v) {
            var r = new RegExp("[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?");
            return (v.match(r) == null) ? false : true;
          },
          validate: function(el) {
            el.addClass('shake animated');
              var animation = setTimeout(function() { 
                el.removeClass('shake animated'); 
            }, 1000);
          }
        }
      });
    </script>
  </body>
</html>