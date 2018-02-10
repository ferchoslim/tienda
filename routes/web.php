<?php
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| This file is where you may define all of the routes that are handled
| by your application. Just tell Laravel the URIs it should respond
| to using a Closure or controller method. Build something great!
|
*/
/************************************************
			falta pulir mas las categorias y terminar de implementar el cache.
************************************************/
Route::get('/test', function() {
	//$category = \App\Category::
});
Route::group(['middleware' => 'guest'], function() {
	Route::post('/registrar', 'AuthController@registerUser');
	Route::get('/registrar', 'AuthController@registerView');
	Route::get('/iniciar', 'AuthController@loginView');
	Route::post('/iniciar', 'AuthController@login');
	Route::get('/resetear', 'Auth\ForgotPasswordController@showLinkRequestForm');
	Route::post('/resetear', 'Auth\ForgotPasswordController@sendResetLinkEmail');
	Route::get('/resetear/{token}', 'Auth\ResetPasswordController@showResetForm');
	Route::post('/resetear/contrasena', 'Auth\ResetPasswordController@reset');
	//Route::post('/resetear/contrasena', 'Auth\ResetPasswordController')
	/*Route::get('/recordar', 'AuthController@forgotView');
	Route::post('/recordar', 'AuthController@fotgot');
	Route::get('/resetear', 'AuthController@resetPasswordView');
	Route::post('/resetear/{token?}', 'AuthController@resetPassword');*/
	Route::get('/admin/login', 'AuthController@adminLoginView');
	Route::post('/admin/login', 'AuthController@login');
});
Route::group(['middleware' => 'role:user'], function() {
	Route::get('/perfil', 'ProfileController@profileView');
	Route::post('/perfil', 'ProfileController@profileSave');
	//Route::get('/checkout', 'StoreController@checkoutView');
	Route::get('/pagar', 'CartController@checkoutView');
	//Route::get('/payment', 'StoreController@paymentView');
	Route::get('/pagado', 'CartController@paymentView');
	Route::get('/compras', 'InvoiceController@purchasesView');
	Route::get('/salir', 'AuthController@logout');
	Route::post('product/rate', 'ProductController@rate');
});
Route::group(['middleware' => 'role:admin'], function() {
	Route::get('/admin/logout', 'AuthController@logout');
	Route::get('/admin', 'AdminController@index');
	Route::get('/admin/product/new', 'Admin\ProductController@productView');
	Route::get('/admin/product/list', 'Admin\ProductController@productListView');
	Route::any('/admin/product/turn', 'Admin\ProductController@productTurn');
	Route::post('/admin/product/get', 'Admin\ProductController@getProductById');
	Route::post('/admin/reference/create', 'ReferenceController@create');
	Route::post('/admin/brand/create', 'BrandController@create');
	Route::post('/admin/references', 'ReferenceController@get');
	Route::post('/admin/type/create', 'TypeController@createType');
	Route::post('/admin/attribute/create', 'AttributeController@createAttribute');
	Route::post('/admin/category/create', 'CategoryController@createCategory');
	Route::post('/admin/subcategory/create', 'CategoryController@createSubCategory');

	Route::any('/admin/product/create', 'Admin\ProductController@create');

	Route::get('/admin/maintenance', 'AdminController@maintenance');
	//Route::post('/admin/categories/add', 'AdminController@addCategory');
	//Route::post('/categories/subcategories', 'AdminController@getCategories');
	//Route::post('/product/attribute', 'ProductController@productAttribute');
	//Route::post('/product/all', 'ProductController@allProduct');
	//Route::post('/product/save', 'ProductController@saveProduct');
	//Route::post('/attribute/save', 'ProductController@saveAttribute');
	//Route::post('/attribute/all', 'ProductController@allAttribute');
	//Route::post('/attribute/add', 'ProductController@addAttribute');
	//Route::post('/reference/add', 'ProductController@addRefenrece');
	//Route::post('/reference/all', 'ProductController@allRefenrece');
	//Route::post('/brand/all', 'ProductController@allBrand');
	//Route::post('/brand/add', 'ProductController@addBrand');
	//Route::post('/type/add', 'ProductController@addType');
	//Route::get('/brand', 'ProductController@brandList');
	Route::get("/admin/supplier/new", "AdminController@newSupplier");
	Route::get("/admin/supplier/mod", "AdminController@modSupplier");
	//Route::post('/admin/excel/import', 'ProductController@excelImport');
	Route::get('/admin/import', 'AdminController@importView');
	//Route::get('/admin/atributos/{slug}', 'ProductController@getAttrFromGSMARENA');
	///////mejores
	Route::post('/admin/brands', 'AdminController@brands');
	
	Route::post('/admin/suppliers', 'AdminController@suppliers');
	Route::post('/admin/categories', 'AdminController@categories');
	
	
	
	
	
	
	
	
	Route::get('/admin/product/new/{id}', 'AdminController@productView');
	Route::get('/admin/product/serial', 'AdminController@productSerialView');
	Route::post('/admin/product/serial/check', 'AdminController@serialCheck');
	//Route::get('/admin/product/serial/save', 'AdminController@serials');
	Route::post('/admin/product/serial/list/save', 'AdminController@saveSerialList');
	Route::post('admin/product/serial/get', 'AdminController@getSerial');
	Route::get('/admin/product/transfer', 'AdminController@productTransferView');
	//Route::post('/admin/product/categories', 'AdminController@getCategoryOfProduct');
});
Route::get('/carrito', 'CartController@cartView');
Route::post('/carrito', 'CartController@addProduct');
//Route::post('/carrito/borrar', 'CartController@deleteProduct');
//Route::post('/cart/update-qty', 'StoreController@cartUpdateQty');
Route::get('/', 'StoreController@index');
Route::post('/buscar', 'SearchController@searchResult');
Route::get('/buscar', 'SearchController@searchResult');
Route::get('/buscar/{search_key}', 'SearchController@searchResult');
Route::get('/product/{brand?}', 'StoreController@productViewList');
Route::get('/{slug}', 'ProductController@productDetailView');
Route::any('/{category}/{subcategory}', 'SearchController@categoryView');



