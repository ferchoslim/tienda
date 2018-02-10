<?php

namespace App\Http\Controllers;

use Image;
use Illuminate\Support\Facades\Input;
use Illuminate\Http\Request;
use App\ProductBrand;
use App\ProductReference;
use App\Attribute;
use App\Product;
use App\ProductSupplier;
use App\ProductAttribute;
use App\ProductAttributeValue;
use App\ProductLot;
use App\ProductImage;
use App\RecentlyViewed;
use App\Category;
use App\CategoryProduct;
use App\ProductAction;
use App\ProductRating;
use App\ProductType;
use App\ProductDiscount;
use App\Type;
use App\Log;
use App\AppConfig;
use Auth;
use Excel;

class ProductController extends Controller
{
  public function getAttrFromGSMARENA(Request $req) {
    $slug = $req->slug;
    $attributes = new \stdClass();
    if (!isset($slug))
      return 'ERROR';
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_URL,'https://www.gsmarena.com/'.$slug.'.php');
    $content = curl_exec($ch);
    return $content;
    $response = json_decode($content);
    $attributes->technology = str_replace(' ','',$response->data->network->technology);
    $band_lte = "";
    foreach($response->data->network as $key => $value) {
      if ($key === '4g_bands') {
        $bands = explode(',', $value);
        foreach($bands as $band) {
          $band = trim($band);
          if ($band === '4(1700/2100)') {
            $band_lte = $band;
          }
        }
      }
    }
    $attributes->band = $band_lte;
    $attributes->weight = str_replace(' ', '', $response->data->body->weight);
    $screen_size = explode(' ', $response->data->display->size);
    $attributes->screen = $screen_size[0];
    $attributes->os = str_replace('upgradable to', 'actualizable a', $response->data->platform->os);
    $attributes->chipset = $response->data->platform->chipset;
    $attributes->cpu = $response->data->platform->cpu;
    $attributes->gpu = $response->data->platform->gpu;
    $memory = $response->data->memory->internal;
    $memory = str_replace(' ', '', $memory);
    $memory = explode(',', $memory);
    $attributes->internal = $memory[0];
    if (sizeof($memory) == 3)
      $index = 2;
    else 
      $index = 1;
    $attributes->ram = str_replace('RAM',  '' , $memory[$index]);
    $camera = explode(',', str_replace(' ', '', $response->data->camera->primary));
    $attributes->camera = $camera[0];
    $camera_sec = explode(',', str_replace(' ', '', $response->data->camera->secondary));
    $attributes->camera_sec = $camera_sec[0];
    $attributes->battery = str_replace('battery', '', str_replace('Non-removable', 'No-Removible', str_replace('Removable', 'Removible', $response->data->battery->_empty_)));
    $response = "Tecnologia:{$attributes->technology}|Banda:{$attributes->band}|Peso:{$attributes->weight}|Pantalla:{$attributes->screen}|OS:{$attributes->os}|Chipset:{$attributes->chipset}|CPU:{$attributes->cpu}|GPU:{$attributes->gpu}|Memoria Interna:{$attributes->internal}|RAM:{$attributes->ram}|Camara Trasera:{$attributes->camera}|Camara Frontal:{$attributes->camera_sec}|Bateria:{$attributes->battery}";
    return $response;
    
  }
  /*public static function average($productId) {
    $rating = [];
    $total = 0;
    $average = 0;
    for($i = 1; $i <= 5; $i++) {
      $rating[$i] = ProductRating::where('product_id', $productId)->where('score', $i)->get()->count();
      $total += $rating[$i];
      $rating[$i] = $i*$rating[$i];
      $average += $rating[$i];
    }
    return ($average == 0) ? 0 : ceil($average/$total);
  }
  public function rate(Request $req) {
    $rating = ProductRating::create([
                'id_user' => Auth::user()->id,
                'id_product' => $req->id_product,
                'score' => $req->score
              ]);
    return response()->json(['response' => 'done']);
  }*/
  public function productDetailView(Request $req) {
    $product = Product::with(['lot', 'discount', 'images', 'brand', 'reference', 'attributes'])
                ->where('slug', $req->slug)->first();
    if (!$product)
      return redirect('/');
    $cleanViewed = RecentlyViewed::where('created_at', '<', new \DateTime('-30 days'))->delete();
    return view('product.single-product')->with(['product' => $product]);
  }
}
