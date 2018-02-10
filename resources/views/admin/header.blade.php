<header class="navbar undefined bg-info navbar-fixed-top animated fadeIn">
	<div class="navbar-branding dark bg-info">
		<a href="/admin" class="navbar-brand celuclock-title">CeluClock</a>
		<span id="toggle_sidemenu_l" class="fa fa-bars"></span>
	</div>
	<ul class="nav navbar-nav navbar-left"></ul>
		<!--<form role="search" class="navbar-form navbar-left navbar-search alt">
		<span class="hide visible-md-inline-block visible-lg-inline-block fa fa-search fs18"></span>
		<div class="form-group">
			<input type="text" placeholder="Buscar..." class="form-control">
		</div>
	</form>-->
	<ul class="nav navbar-nav navbar-right">
		<li class="navbar-brand text-uppercase">
			{{ auth()->user()->fullname }}
			<p class="text-lowercase">
				@if (auth()->user()->role == 'admin')
					administrador
				@else
					vendedor
				@endif
			</p>
		</li>
		
		<li class="dropdown menu-merge">
			<a href="#" data-toggle="dropdown" class="dropdown-toggle fw600 p15">
				<span class="fa fa-angle-down"></span> 
			</a>
			<ul role="menu" class="dropdown-menu list-group dropdown-persist w300">
				<li class="list-group-item">
					<a href="/admin/maintenance" class="animated animated-short fadeInUp">
						<span class="fa fa-wrench"></span>
						Modo Mantenimiento
						@if (App::isDownForMaintenance())
							<span class="label label-success">DESACTIVAR</span>
						@else
							<span class="label label-danger">ACTIVAR</span>
						@endif
					</a>
				</li>
				<!--<li class="list-group-item">
					<a href="#" class="animated animated-short fadeInUp">
						<span class="fa fa-gear"></span>
						Configuración
					</a>
				</li>-->
				<li class="dropdown-footer">
					<a href="/admin/logout">
						<span class="fa fa-power-off pr5"></span>
						Cerrar Sesión
					</a>
				</li>
			</ul>
		</li>
	</ul>
</header>