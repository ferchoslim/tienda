<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CategoryProduct extends Model
{
    protected $table = 'categories_products';
    protected $fillable = ['product_id', 'category_id'];
    public function product() {
    	return $this->belongsTo('App\Product', 'product_id', 'id');
    }
    public function products() {
        return $this->belongsToMany('App\Product', 'product_id', 'id');
    }
    /*public function lot() {
    	return $this->hasOne('App\ProductLot', 'id_product', 'id_product');
    }*/
    public function lot() {
    	return $this->belongsTo('App\ProductLot', 'product_id', 'product_id');
    }
    public function parent() {
        return $this->belongsTo('App\Category', 'category_id', 'id');
    }
}
