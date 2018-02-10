<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Serial extends Model
{
  protected $fillable = ['id_product', 'id_lot', 'serial'];

  public function product() {
  	return $this->belongsTo('App\Product', 'id_product', 'id');
  }
}
