<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cart extends Model
{
    protected $table = "carts";
    protected $fillable = [ "user_id", "session_id" ];

    /*public function products() {
    	return $this->hasMany('App\CartProduct', 'cart_id');
    }*/
    public function products() {
    	return $this->hasMany(CartProduct::class);
    }
    public function getNumProductsAttribute() {
    	return count($this->products);
    }
}
