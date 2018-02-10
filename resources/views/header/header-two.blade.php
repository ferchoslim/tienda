<header class="no-padding-bottom header-alt">
    <div class="container no-padding">
        
        <div class="col-xs-12 col-md-3 logo-holder">
			@include('header.logo')
		</div><!-- /.logo-holder -->

		<div class="col-xs-12 col-md-6 top-search-holder no-margin">
			@include('header.search-bar')
		</div><!-- /.top-search-holder -->

		<div class="col-xs-12 col-md-3 top-cart-row no-margin">
			@include('header.shopping-cart-dropdown')
		</div><!-- /.top-cart-row -->

	</div><!-- /.container -->
	
	@include('menu.horizontal-menu')
	<div style="margin-bottom: 20px;">
		
	</div>

</header>