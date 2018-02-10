<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $table = 'categories';
    protected $fillable = ['name', 'slug', 'pos', 'parent_id', 'image'];

    public function category() {
    	return $this->hasMany('App\Category', 'parent_id', 'id');
    }
    public function products() {
    	return $this->belongsToMany('App\Product', 'categories_products', 'category_id', 'product_id');
    }
    public function getNumProductsAttribute() {
    	return count($this->products);
    }
}
