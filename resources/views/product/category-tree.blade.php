@inject('categories', 'App\Category')
@inject('subcategories', 'App\Category')
<div class="widget accordion-widget category-accordions">
  <h1 class="border">Categorias</h1>
  <div class="accordion">
    @php
        $cat_num = 1; 
        $url = url()->current();
        $url = explode('/', $url);
    @endphp
    @foreach($categories->where('parent_id', 0)->orderBy('pos')->get() as $category)
    <div class="accordion-group">
      <div class="accordion-heading">
        <a 
        class="accordion-toggle 
        @if(!in_array(strtolower($category->name), $url))
            collapsed
        @endif
        " 
        data-toggle="collapse" 
        href="#collapse{{ $cat_num }}">
            {{ $category->name }}
        </a>
      </div>
      <div 
        id="collapse{{ $cat_num++ }}" 
        class="accordion-body collapse 
        @if(in_array(strtolower($category->name), $url))
            in
        @endif
        ">
        <div class="accordion-inner">
            <ul>
                @foreach($subcategories->where('parent_id', $category->id)->orderBy('pos')->get() as $subcategory)
                    <li><a href="{{ url('/')}}/{{ $subcategory->slug }}">{{ $subcategory->name }}</a></li>
                @endforeach
            </ul>
        </div>
      </div>
    </div>
    @endforeach
  </div>
</div>