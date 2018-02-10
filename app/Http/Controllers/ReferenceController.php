<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Reference;
use App\Brand;

class ReferenceController extends Controller
{
  public function get(Request $req) {
    $req->validate([
      'id' => 'required|numeric|exists:products_brands'
    ]);
    $references = Reference::where('brand_id', $req->id)->get();
    if ($references->isEmpty())
      return response()->json(['status' => 'empty'], 200);
    return response()->json(['status' => 'success', 'references' => $references], 200);
  }
  public function create(Request $req) {
  	$req->validate([
      'id' => 'required|numeric|exists:products_brands',
      'name' => 'required|max:255'
    ]);
    $reference = Reference::create([
    	'brand_id' => $req->id, 
      'name' => strtolower($req->name),
      'reference' => strtolower($req->reference)
    ]);
    $brands = Brand::with('references')->orderBy('name')->get();
    return response()->json(['status' => 'success', 'brands' => $brands, 'reference' => $reference], 200);
  }
  public static function realName(string $name) {
  	$name = ucwords($name);
  	$name = str_replace('Iphone', 'iPhone', $name);
  	return $name;
  }
}
