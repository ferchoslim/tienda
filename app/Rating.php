<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Rating extends Model
{
    protected $table = 'products_rating';
    protected $fillable = ['user_id', 'product_id', 'score'];

    public function product() {
    	return $this->belongsTo(Product::class);
    }
}
