<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;

class CategoryController extends Controller
{
  public function createSubCategory(Request $req) {
  	$req->validate([ 
      'name' => 'required|max:255',
      'id' => 'numeric|exists:categories'
    ]);
    $category = Category::find($req->id);
    $pos = Category::where('parent_id', $req->id)->orderBy('pos', 'desc')->first();
    $pos = (!$pos) ? 0 : $pos->pos+1;
    $subCategory = Category::create([
                  'name' => strtolower($req->name),
                  'slug' => str_slug($category->name).'/'.str_slug($req->name),
                  'parent_id' => $req->id,
                  'pos' => $pos
                ]);
    $categories = Category::orderBy('name')->get();
    return response()->json([
      'status' => 'SUCCESS',
      'category' => $category,
      'subcategory' => $subCategory,
      'categories' => $categories
    ]);
  }
  public function createCategory(Request $req) {
  	$req->validate([
      'name' => 'required|max:255'
    ]);
    $pos = Category::where('parent_id', 0)->orderBy('pos', 'desc')->first()->pos+1;
    $category = Category::create([
                  'name' => strtolower($req->name),
                  'slug' => str_slug($req->name),
                  'parent_id' => 0,
                  'pos' => $pos
                ]);
    $categories = Category::orderBy('name')->get();
    return response()->json([
    	'status' => 'SUCCESS',
    	'category' => $category,
    	'categories' => $categories
    ]);
  }
}