<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CartProduct extends Model
{
    protected $table = "cart_products";
    protected $fillable = ["cart_id", "product_id", "quantity", "sale_price"];

    public function product() {
    	return $this->belongsTo(Product::class);
    }
}
