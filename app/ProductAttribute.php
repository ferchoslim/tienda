<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ProductAttribute extends Model
{
    protected $table = 'products_attributes';
    protected $fillable = ['attribute_id', 'product_id', 'value'];

    public function attribute() {
      return $this->belongsTo(Attribute::class);
    }
}
