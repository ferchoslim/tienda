<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ProductType extends Model
{
    protected $table = 'products_types';
    protected $fillable = ['type_id', 'product_id'];

    public function type() {
    	return $this->belongsTo(Type::class);
    }
}
