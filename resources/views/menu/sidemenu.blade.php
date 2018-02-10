@inject('categories', 'App\Category')
@php
if (Cache::has('sidemenu.categories')) {
  $categories = Cache::get('sidemenu.categories');
}
else {
  $categories = $categories->where('parent_id', 0)->orderBy('pos', 'asc')->get();
  Cache::put('sidemenu.categories', $categories, 20);
}
@endphp
<div class="side-menu animate-dropdown">
  <div class="head"><i class="fa fa-list"></i>categorias</div>
  <nav class="yamm megamenu-horizontal" role="navigation">
    <ul class="nav">
      @foreach($categories as $category)
        <li class="dropdown menu-item">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">{{ $category->name }}</a>
          <ul class="dropdown-menu mega-menu">
            <li class="yamm-content">
              @include('menu.submenu-vertical')
            </li>
          </ul>
        </li>
      @endforeach
    </ul>
  </nav>
</div>