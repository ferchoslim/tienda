<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use App\Category;
use Illuminate\Support\Facades\Cache;

class SearchController extends Controller
{
  public function searchResult(Request $req) {
    $searchKey = $req->q;
    //$searchKey = str_replace(" ", "%", $searchKey);
    if ($searchKey == null) {
      if (Cache::has('searchResult.products.all')) {
        $products = Cache::get('searchResult.products');
      }
      else {
        $products = $products = Product::with(['lot', 'discount', 'images', 'brand', 'reference'])->all();
        Cache::put('searchResult.products.all', $products, 20);
      }
    }
    $matchList = explode(" ", $searchKey);
    $i = 0;
    $searchKeySlug = str_slug($searchKey, '.');
    if (Cache::has('searchResult.products.'.$searchKeySlug)) {
      $products = Cache::get('searchResult.products.'.$searchKeySlug);
    }
    else {
      $products = Product::with(['lot', 'discount', 'images', 'brand', 'reference'])
                            ->where(function($query) use ($matchList, $i) {
                              foreach($matchList as $match) {
                                if ($i == 0) {
                                  $query->where('tags', 'like', '%'.$match.'%');
                                  $i++;
                                }
                                else {
                                  $query->orWhere('tags', 'like', '%'.$match.'%');
                                }
                              }
                            })->get();
      Cache::put('searchResult.products.'.$searchKeySlug, $products, 20);
    }
    $brands = [];
    $prices = [];
    $productsIds = [];
    $brandsSelected = ($req->brand) ? $req->brand : [0];
    foreach($products as $product) {
      $brand = $product->brand;
      array_push($productsIds, $product->id);
      array_push($prices, $product->lot->sale_price);
      if (!count($brands)) {
        $selected = (in_array($brand->id, $brandsSelected)) ? true : false;
        $_brand = array(
          'id' => $brand->id,
          'name' => $brand->name,
          'selected' => $selected,
          'num' => 1,
          'productsIds' => array($product->id)
        );
      }
      else {
        $flag = true;
        foreach($brands as $key => $value) {
          if ($value['id'] == $brand->id) {
            $brands[$key]['num'] = $brands[$key]['num']+1;
            array_push($brands[$key]['productsIds'], $product->id); 
            $flag = false;
            $_brand = null;
          }
        }
        if ($flag) {
          $selected = (in_array($brand->id, $brandsSelected)) ? true : false;
          $_brand = array(
                  'id' => $brand->id,
                  'name' => $brand->name,
                  'selected' => $selected,
                  'num' => 1,
                  'productsIds' => array($product->id)
          );
        }  
      }
      if ($_brand) {
        array_push($brands, $_brand);
      }
    }
    $maxPrice = (!count($prices)) ? '0' : max($prices);
    $minPrice = (!count($prices)) ? '0' : min($prices);
    $minPriceFiltered = ($req->filter) ? explode(',',$req->filter)[0] : $minPrice;
    $maxPriceFiltered = ($req->filter) ? explode(',',$req->filter)[1] : $maxPrice;
    if ($req->filtering) {
      if ($brandsSelected[0] == 0) {
        if (Cache::has('searchResult.products.'.$searchKeySlug.'.'.request('page', 1))) {
          $products = Cache::get('searchResult.products.'.$searchKeySlug.'.'.request('page', 1));
        }
        else {
          $products = Product::with(['lot', 'discount', 'images', 'brand', 'reference'])
                    ->whereIn('id', $productsIds)
                      ->whereHas('lot', function($query) 
                        use ($minPriceFiltered, $maxPriceFiltered) {
                          $query->where('sale_price', '>=', $minPriceFiltered)
                                ->where('sale_price', '<=', $maxPriceFiltered);
                    })->orderBy('created_at', 'DESC')->paginate(15);
          Cache::put('searchResult.products.'.$searchKeySlug.'.'.request('page', 1), $products, 20);
        }
        /*$products = Product::whereIn('id', $productsIds)
                      ->whereHas('lot', function($query) 
                        use ($minPriceFiltered, $maxPriceFiltered) {
                          $query->where('sale_price', '>=', $minPriceFiltered)
                                ->where('sale_price', '<=', $maxPriceFiltered);
                    })->orderBy('created_at', 'DESC')->paginate(15);*/
      }
      else {
        $productsIds = [];
        foreach($brandsSelected as $brand_selected) {
          foreach($brands as $brand) {
            if ($brand['id'] == $brand_selected) {
              foreach($brand['productsIds'] as $product_id) {
                array_push($productsIds, $product_id);
              }
            }
          }
        }
        /*$products = Product::whereIn('id', $productsIds)
                      ->whereHas('lot', function($query) 
                        use ($minPriceFiltered, $maxPriceFiltered) {
                          $query->where('sale_price', '>=', $minPriceFiltered)
                                ->where('sale_price', '<=', $maxPriceFiltered);
                    })->orderBy('created_at', 'DESC')->paginate(15);*/
        if (Cache::has('searchResult.products.'.$searchKeySlug.'.'.request('page', 1))) {
          $products = Cache::get('searchResult.products.'.$searchKeySlug.'.'.request('page', 1));
        }
        else {
          $products = Product::with(['lot', 'discount', 'images', 'brand', 'reference'])
                    ->whereIn('id', $productsIds)
                      ->whereHas('lot', function($query) 
                        use ($minPriceFiltered, $maxPriceFiltered) {
                          $query->where('sale_price', '>=', $minPriceFiltered)
                                ->where('sale_price', '<=', $maxPriceFiltered);
                    })->orderBy('created_at', 'DESC')->paginate(15);
          Cache::put('searchResult.products.'.$searchKeySlug.'.'.request('page', 1), $products, 20);
        }
      }
    }
    else {
      if (Cache::has('searchResult.products.'.$searchKeySlug.'.'.request('page', 1))) {
          $products = Cache::get('searchResult.products.'.$searchKeySlug.'.'.request('page', 1));
      }
      else {
        $products = Product::with(['lot', 'discount', 'images', 'brand', 'reference'])->whereIn('id', $productsIds)->orderBy('created_at', 'DESC')->paginate(15);
        Cache::put('searchResult.products.'.$searchKeySlug.'.'.request('page', 1), $products, 20);
      }
      //$products = Product::whereIn('id', $productsIds)->orderBy('created_at', 'DESC')->paginate(15);
    }
    $brands = json_encode($brands);
    return view('product.category')->with([
      'brands' => $brands,
      'products' => $products, 
      'maxPrice' => $maxPrice,
      'minPrice' => $minPrice,
      'minPriceFiltered' => $minPriceFiltered,
      'maxPriceFiltered' => $maxPriceFiltered,
      'searchKey' => $req->searchKey
    ]);
  }
  public function categoryView(Request $req) {
    $categoryUrl = $req->category.'/'.$req->subcategory;
    $categorySlug = str_slug($req->category.'.'.$req->subcategory, '.');
    if (Cache::has('categoryView.category.'.$categorySlug)) {
      $category = Cache::get('categoryView.category.'.$categorySlug);
    }
    else {
      $category = Category::with('products')->where('slug', $categoryUrl)->first();
      Cache::put('categoryView.category.'.$categorySlug, $category, 20);
    }
    //$category = Category::with('products')->where('slug', $categoryUrl)->first();
    if ($category) {
      $products = $category->products;
      $brands = [];
      $prices = [];
      $productsIds = [];
      $brandsSelected = ($req->brand) ? $req->brand : [0];
      foreach($products as $product) {
        $brand = $product->brand;
        array_push($productsIds, $product->id);
        array_push($prices, $product->lot->sale_price);
        if (!count($brands)) {
          $selected = (in_array($brand->id, $brandsSelected)) ? true : false;
          $_brand = array(
                    'id' => $brand->id,
                    'name' => $brand->name,
                    'selected' => $selected,
                    'num' => 1,
                    'products_ids' => array($product->id)
          );
        }
        else {
          $flag = true;
          foreach($brands as $key => $value) {
            if ($value['id'] == $brand->id) {
              $brands[$key]['num'] = $brands[$key]['num']+1;
              array_push($brands[$key]['products_ids'], $product->id); 
              $flag = false;
              $_brand = null;
            }
          }
          if ($flag) {
            $selected = (in_array($brand->id, $brandsSelected)) ? true : false;
            $_brand = array(
                    'id' => $brand->id,
                    'name' => $brand->name,
                    'selected' => $selected,
                    'num' => 1,
                    'products_ids' => array($product->id)
            );
          }  
        }
        if ($_brand) {
          array_push($brands, $_brand);
        }
      }
      $maxPrice = (!count($prices)) ? '0' : max($prices);
      $minPrice = (!count($prices)) ? '0' : min($prices);
      $minPriceFiltered = ($req->filter) ? explode(',',$req->filter)[0] : $minPrice;
      $maxPriceFiltered = ($req->filter) ? explode(',',$req->filter)[1] : $maxPrice;
      if ($req->filtering) {
        if ($brandsSelected[0] == 0) {
          if (Cache::has('searchResult.products.'.$categorySlug)) {
              $products = Cache::get('searchResult.products.'.$categorySlug);
          }
          else {
            $products = Product::with(['lot', 'discount', 'images', 'brand', 'reference'])
                      ->whereIn('id', $productsIds)
                        ->whereHas('lot', function($query) 
                          use ($minPriceFiltered, $maxPriceFiltered) {
                            $query->where('sale_price', '>=', $minPriceFiltered)
                                  ->where('sale_price', '<=', $maxPriceFiltered);
                      })->orderBy('created_at', 'DESC')->paginate(15);
            Cache::put('searchResult.products.'.$categorySlug, $products, 20);
          }
          /*$products = Product::whereIn('id', $productsIds)
                        ->whereHas('lot', function($query) 
                          use ($minPriceFiltered, $maxPriceFiltered) {
                            $query->where('sale_price', '>=', $minPriceFiltered)
                                  ->where('sale_price', '<=', $maxPriceFiltered);
                      })->orderBy('created_at', 'DESC')->paginate(15);*/
        }
        else {
          $products_ids = [];
          foreach($brandsSelected as $brandSelected) {
            foreach($brands as $brand) {
              if ($brand['id'] == $brandSelected) {
                foreach($brand['products_ids'] as $productId) {
                  array_push($productsIds, $productId);
                }
              }
            }
          }
          if (Cache::has('searchResult.products.'.$categorySlug)) {
              $products = Cache::get('searchResult.products.'.$categorySlug);
          }
          else {
            $products = Product::with(['lot', 'discount', 'images', 'brand', 'reference'])
                      ->whereIn('id', $productsIds)
                        ->whereHas('lot', function($query) 
                          use ($minPriceFiltered, $maxPriceFiltered) {
                            $query->where('sale_price', '>=', $minPriceFiltered)
                                  ->where('sale_price', '<=', $maxPriceFiltered);
                      })->orderBy('created_at', 'DESC')->paginate(15);
            Cache::put('searchResult.products.'.$categorySlug, $products, 20);
          }
        }
      }
      else {
        if (Cache::has('searchResult.products.'.$categorySlug)) {
          $products = Cache::get('searchResult.products.'.$categorySlug);
        }
        else {
          $products = Product::with(['lot', 'discount', 'images', 'brand', 'reference'])->whereIn('id', $productsIds)->orderBy('created_at', 'DESC')->paginate(15);
          Cache::put('searchResult.products.'.$categorySlug, $products, 20);
        }
        //$products = Product::whereIn('id', $productsIds)->orderBy('created_at', 'DESC')->paginate(15);
      }
      $brands = json_encode($brands);
      return view('product.category')->with([
        'brands' => $brands,
        'products' => $products, 
        'category' => $category, 
        'maxPrice' => $maxPrice,
        'minPrice' => $minPrice,
        'minPriceFiltered' => $minPriceFiltered,
        'maxPriceFiltered' => $maxPriceFiltered,
        'url' => $req->subcategory
        ]);
    }
    else {
      return redirect('/');
    }
  }
}
