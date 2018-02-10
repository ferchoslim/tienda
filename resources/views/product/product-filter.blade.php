<div class="widget">
  <h1>Filtro</h1>
  <div class="body bordered">
    <form id="form-filter" @if(isset($url)) action="{{ $url }}" @else action="{{ Request::url() }}" @endif method='get'>
      <input type="hidden" name="filtering" value="true">
      <div class="category-filter">
        <h2>Fabricante</h2>
        <hr>
        <ul>
        @foreach(json_decode($brands) as $categorySidemenu)
          <li>
            <input 
            @if ($categorySidemenu->selected == 'true')
              checked="checked"
            @endif
            class="le-checkbox" name="brand[]" value="{{ $categorySidemenu->id }}" type="checkbox"  />
            <label>{{ $categorySidemenu->name }}</label>
            <span class="pull-right">({{ $categorySidemenu->num }})</span>
          </li>
        @endforeach
        </ul>
      </div><!-- /.category-filter -->
          
      <div class="price-filter">
        <h2>Precio</h2>
        <hr>
        <div class="price-range-holder">
          <span class="min-max">
            Rango: ${{ number_format($minPrice) }} - ${{ number_format($maxPrice) }}
          </span>
          <input type="text" name="filter" class="price-slider" value="{{ $minPriceFiltered }}, {{ $maxPriceFiltered }}" >
          <hr>
          <span class="filter-button">
            <a href="javascript:void(0);" id='btn-filter'>Filtrar</a>
          </span>
        </div>
      </div>
    </form>
  </div>
</div>