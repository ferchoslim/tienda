<nav class="top-bar animate-dropdown navbar-fixed-top hidden-sm hidden-xs">
  <div class="container">
    <div class="col-xs-12 col-sm-6 no-margin">
      <ul>
        <li><a href="/">Inicio</a></li>
        <!--<li><a href="/">Servicios</a></li>
        <li><a href="/">Ayuda</a></li>
        <li><a href="/">Contacto</a></li>-->
      </ul>
      </div>
      <div class="col-xs-12 col-sm-6 no-margin">
        <ul class="right">
          <li class="dropdown">
            <a class="dropdown-toggle"  data-toggle="dropdown" href="#change-language">Español</a>
            <!--<ul class="dropdown-menu" role="menu" >
              <li role="presentation"><a role="menuitem" tabindex="-1" href="#">English</a></li>
            </ul>-->
          </li>
          <li class="dropdown">
            <a class="dropdown-toggle"  data-toggle="dropdown" href="#change-currency">Peso (COP)</a>
            <!--<ul class="dropdown-menu" role="menu">
              <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Euro (EU)</a></li>
              <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Dollar (USD)</a></li>
            </ul>-->
          </li>
          @if (!Auth::check())
            <li><a href="/registrar">Regístrarse</a></li>
            <li><a href="/iniciar">Iniciar sesión</a></li>
          @else
            <li class="dropdown">
              <a class="dropdown-toggle"  data-toggle="dropdown" href="#">{{ Auth::user()->fullname }}</a>
              <ul class="dropdown-menu" role="menu">
                <li role="presentation"><a role="menuitem" tabindex="-1" href="/perfil"><i class="fa fa-user"></i>&nbsp;&nbsp;Mi Perfil</a></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="/compras"><i class="fa fa-shopping-bag"></i>&nbsp;&nbsp;Mis Compras</a></li>
                <li><hr></li>
                <li><a href="/salir"><i class="fa fa-power-off"></i>&nbsp;&nbsp;Cerrar Sesión</a></li>
              </ul>
            </li>
          @endif
        </ul>
      </div>
    </div>
  </nav>
  <br class="hidden-xs">