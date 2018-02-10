<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Input;

use App\Brand;
use Image;

class BrandController extends Controller
{
  public function create(Request $req) {
  	$req->validate([
  		'name' => 'required|max:255|unique:brands',
      'image' => 'required|image|mimes:jpg,png,jpeg'
  	]);
    $path = 'images/brands/145x36/';
    $imageName = strtolower(str_slug($req->name)).'.'.
    							Input::file('image')->getClientOriginalExtension();
    Image::make(Input::file('image'))->resize(145, 36, function($img) {
      $img->aspectRatio(); $img->upsize();
    })->save($path.$imageName);
    $brand = Brand::create([
    	'name' => trim(strtolower($req->name)), 
      'image' => $imageName
    ]);
    $brands = Brand::with('references')->orderBy('name')->get();
    return response()->json([
    	'status' => 'SUCCESS', 
    	'brands' => $brands,
    	'brand' => $brand
    ], 200);
  }
}
