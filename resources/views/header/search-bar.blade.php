@inject('categories', 'App\Category')
<div class="contact-row hidden-xs">
  <div class="phone inline">
    <i class="fa fa-phone"></i> (+57) 5-671-0870
  </div>
  <div class="phone inline">
    <i class="fa fa-mobile"></i> (+57) 300-470-4423
  </div>
  <div class="contact inline">
    <i class="fa fa-envelope"></i> ventas@<span class="le-color">celuclock.co</span>
  </div>
</div>
<div class="search-area">
  <form action="/buscar" method="get" id="search-form">
    <div class="control-group">
      <input class="search-field" name="q" placeholder="Buscar articulo" @if (isset($searchKey)) value="{{ $searchKey }}" @endif />
      <a class="search-button" id="btn-search" href="javascript:void(0);" ></a>
    </div>
  </form>
</div>