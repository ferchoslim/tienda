<div class="row">
  <div class="col-xs-12">
    <ul>
      @foreach($category->category as $category)
        <li><a href="{{ $category->slug }}">{{ $category->name }}</a></li>
      @endforeach
    </ul>
  </div>
  <!--<div class="dropdown-banner-holder">
    <a href="#"><img alt="" src="images/banners/banner-side.png" /></a>
  </div>-->
</div>