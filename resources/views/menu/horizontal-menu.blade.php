@inject('side_menu', 'App\Category')
<nav id="top-megamenu-nav" class="megamenu-vertical animate-dropdown">
    <div class="container">
        <div class="yamm navbar">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#mc-horizontal-menu-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div><!-- /.navbar-header -->
            <div class="collapse navbar-collapse" id="mc-horizontal-menu-collapse">
                <ul class="nav navbar-nav">
                @foreach($side_menu->where('parent_id', 0)->orderBy('pos', 'asc')->get() as $menu)
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown">{{ $menu->name }}</a>
                        <ul class="dropdown-menu">
                        @foreach($menu->Category as $category)
                            <li><a href="{{ Request::root() }}/{{ $category->slug }}">{{ $category->name }}</a></li>
                        @endforeach
                        </ul>
                    </li>
                @endforeach    
                </ul>
            </div>
        </div>
    </div>
</nav>