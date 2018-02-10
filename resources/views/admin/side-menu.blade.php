<aside id="sidebar_left" class="nano nano-light affix animated fadeIn">
  <!-- Start: Sidebar Left Content-->
  <div class="sidebar-left-content nano-content">
    <!-- Start: Sidebar Header-->
    <header class="sidebar-header">
      <!-- Sidebar Widget - Search (hidden)-->
      <div class="sidebar-widget search-widget hidden">
        <div class="input-group"><span class="input-group-addon"><i class="fa fa-search"></i></span>
        <input id="sidebar-search" type="text" placeholder="Search..." class="form-control"/>
      </div>
    </div>
  </header>
  <ul class="nav sidebar-menu">
    <li class="sidebar-label pt35"></li>
    <li <?php if ($menu[0] == 'admin') echo 'class="active"'; ?>>
      <a href="/admin">
      <span class="fa fa-calendar"></span>
      <span class="sidebar-title">Inicio</span>
      </a>
    </li>
    <li class="sidebar-label pt35"></li>
    <li>
      <a 
        href="#" 
        class="accordion-toggle 
        @if ($menu[0] == 'product')
          menu-open
        @endif
        ">
        <span class="fa fa-shopping-basket"></span>
        <span class="sidebar-title">Productos</span>
        <span class="caret"></span>
      </a>
      <ul class="nav sub-nav">
        <li <?php if ($menu[1] == 'new') echo 'class="active"'; ?>>
          <a href="/admin/product/new">
            <span class="fa fa-plus-circle"></span>
            Nuevo
          </a>
        </li>
        <!--<li <?php if ($menu[1] == 'serial') echo 'class="active"'; ?>>
          <a href="/admin/product/serial">
            <span class="fa fa-key"></span>
            Seriales
          </a>
        </li>
        <li <?php if ($menu[1] == 'transfer') echo 'class="active"'; ?>>
          <a href="/admin/product/transfer">
            <span class="fa fa-exchange"></span>
            Transferencias
          </a>
        </li>-->
        <li <?php if ($menu[1] == 'list') echo 'class="active"'; ?>>
          <a href="/admin/product/list">
            <span class="glyphicon glyphicon-th-list"></span>
            Listado
          </a>
        </li>
        <!--<li <?php if ($menu[1] == 'import') echo 'class="active"'; ?>>
          <a href="/admin/import">
            <span class="fa fa-cloud-upload"></span>
            Importar
          </a>
        </li>-->
      </ul>
    </li>
    
    <!--<li>
      <a 
        href="#" 
        class="accordion-toggle 
        @if ($menu[0] == 'warehouse')
          menu-open
        @endif
        ">
        <span class="glyphicon glyphicon-th"></span>
        <span class="sidebar-title">Bodegas</span>
        <span class="caret"></span>
      </a>
      <ul class="nav sub-nav">
        <li <?php if ($menu[1] == 'new') echo 'class="active"'; ?>>
          <a href="/admin/warehouse/new">
            <span class="fa fa-plus-circle"></span>
            Nuevo
          </a>
        </li>
      </ul>
    </li>

    <li>
      <a 
        href="#" 
        class="accordion-toggle 
        @if ($menu[0] == 'supplier')
          menu-open
        @endif
        ">
        <span class="fa fa-truck"></span>
        <span class="sidebar-title">Proveedores</span>
        <span class="caret"></span>
      </a>
      <ul class="nav sub-nav">
        <li <?php if ($menu[1] == 'new') echo 'class="active"'; ?>>
          <a href="/admin/supplier/new">
            <span class="fa fa-plus-circle"></span>
            Nuevo
          </a>
        </li>
        <li <?php if ($menu[1] == 'mod') echo 'class="active"'; ?>>
          <a href="/admin/supplier/mod">
            <span class="glyphicon glyphicon-pencil"></span>
            Modificar
          </a>
        </li>
      </ul>
    </li>-->
    
    <!-- Start: Sidebar Collapse Button-->
    <div class="sidebar-toggle-mini"><a href="#"><span class="fa fa-sign-out"></span></a></div>
  </div>
</aside>