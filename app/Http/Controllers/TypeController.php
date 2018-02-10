<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Type;

class TypeController extends Controller
{
  public function createType(Request $req) {
  	$req->validate([
      'name' => 'required|max:255|unique:types'
    ]);
  	$type = Type::create([
  		'name' => strtolower($req->name)
  	]);
  	$types = Type::orderBy('name')->get();
  	return response()->json([
      'status' => 'success', 
      'type' => $type,
      'types' => $types
    ], 200);
  }
}
