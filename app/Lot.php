<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Lot extends Model
{
  protected $fillable = [ 'id_product', 'id_supplier', 'purchase_price', 'sale_price', 'init_quantity', 'quantity' ];

  public function supplier() {
  	return $this->hasOne('App\ProductSupplier', 'id', 'id_supplier');
  }
}
