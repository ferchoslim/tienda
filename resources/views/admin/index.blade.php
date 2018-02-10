@extends('admin.layout.master')
@section('title', 'Administrador')
@section('content')
  @include('admin.header')
  @include('admin.side-menu')
  <section id="content_wrapper" class="animated fadeIn">
    <header id="topbar" class="alt">
      <div class="topbar-left pull-left">
        <h1 id="app" class="mn">Administrador</h1><span class="text-shady-lady fs15">administrador & estadisticas</span>
      </div>
    </header>
    <section id="content" class="table-layout">
    <div class="tray tray-center">
      <div class="tray-inner">
        <div class="row flex-column-reverse-before-md">
        <div class="col-sm-12">
          <div class="p30">
            <!-- dashboard tiles-->
            <h2 class="ib mn mr20">Totales</h2>
            <div class="row text-center mt35">
              <div class="col-sm-6 col-md-3 br-lg-r">
                <h2 class="mn fs47 ib pr20 monserrat">{{ $dashVars->total_products }}</h2>
                <div class="reveal-xlg-inline-block text-center text-xlg-left">
                  <p class="fs15 text-shady-lady mb2">Productos</p>
                </div>
              </div>
              <div class="col-sm-6 col-md-3 br-lg-r mt-30 mt-sm-0">
                <h2 class="mn monserrat fs47 ib pr20">${{ number_format($dashVars->current_month_sales) }}</h2>
                <div class="reveal-xlg-inline-block text-center text-xlg-left">
                  <p class="fs15 text-shady-lady mb2">Ventas de {{ $dashVars->current_month }}
                  </p>
                </div>
              </div>
              <div class="clearfix visible-sm-block"></div>
              <div class="col-sm-6 col-md-3 br-lg-r mt-30 mt-md-0">
                <h2 class="mn monserrat fs47 ib pr20">{{ $dashVars->current_mount_sold_products }}</h2>
                <div class="reveal-xlg-inline-block text-center text-xlg-left">
                  <p class="fs15 text-shady-lady mb2">Productos Vendidos en {{ $dashVars->current_month }}
                  </p>
                </div>
              </div>
              <div class="col-sm-6 col-md-3 mt-30 mt-md-0">
                <h2 class="mn monserrat fs47 ib pr20">{{ $dashVars->users_registred }}</h2>
                <div class="reveal-xlg-inline-block text-center text-xlg-left">
                  <p class="fs15 text-shady-lady mb2">Usuarios Registrados
                  </p>
                </div>
              </div>
            </div>

            <div class="row text-center mt35">
              <div class="col-sm-6 col-md-3 br-lg-r">
                <h2 class="mn fs47 ib pr20 monserrat">{{ $dashVars->total_stocks }}</h2>
                <div class="reveal-xlg-inline-block text-center text-xlg-left">
                  <p class="fs15 text-shady-lady mb2">Productos en Existencias</p>
                </div>
              </div>
              <div class="col-sm-6 col-md-3 br-lg-r mt-30 mt-sm-0">
                <h2 class="mn monserrat fs47 ib pr20">${{ number_format($dashVars->current_month_profits) }}</h2>
                <div class="reveal-xlg-inline-block text-center text-xlg-left">
                  <p class="fs15 text-shady-lady mb2">Ganancias de {{ $dashVars->current_month }}</p>
                </div>
              </div>
              <div class="clearfix visible-sm-block"></div>
              <div class="col-sm-6 col-md-3 br-lg-r mt-30 mt-md-0">
                <h2 class="mn monserrat fs47 ib pr20"></h2>
                <div class="reveal-xlg-inline-block text-center text-xlg-left">
                  <p class="fs15 text-shady-lady mb2"></p>
                </div>
              </div>
              <div class="col-sm-6 col-md-3 mt-30 mt-md-0">
                <h2 class="mn monserrat fs47 ib pr20"></h2>
                <div class="reveal-xlg-inline-block text-center text-xlg-left">
                  <p class="fs15 text-shady-lady mb2"></p>
                </div>
              </div>
            </div>

        </div>
      </div>
      </div>
    </div>
    </div>
    </section>
  </section>
@stop