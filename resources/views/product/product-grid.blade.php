<section id="category-grid">
    <div class="container">
        <div class="col-xs-12 col-sm-3 no-margin sidebar narrow">
            @include('product.product-filter')
            @include('product.category-tree')
            @include('product.sidebar-banner')
            @include('product.featured-products')
        </div>
        <div class="col-xs-12 col-sm-9 no-margin wide sidebar">

            <!--<div id="grid-page-banner">
                <a href="#">
                @if (isset($category))
                    <img src="{{ asset('images/categories/'.$category->image) }}" alt="" />
                @endif
                </a>
            </div>-->

            @include('product.category-products')
                        
        </div>
    </div>
</section>