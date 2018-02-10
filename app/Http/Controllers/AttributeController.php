<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Attribute;

class AttributeController extends Controller
{
  public function createAttribute(Request $req) {
  	$req->validate([
      'name' => 'required|max:255|unique:attributes'
    ]);
  	$attribute = Attribute::create([
  		'name' => strtolower($req->name)
  	]);
  	$attributes = Attribute::orderBy('name')->get();
  	return response()->json([
  		'status' => 'SUCCESS', 
  		'attribute' => $attribute, 
  		'attributes' => $attributes
  	]);
  }
}
