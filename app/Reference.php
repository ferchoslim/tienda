<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Reference extends Model
{
  protected $fillable = ['brand_id', 'name', 'reference'];

  public function brand() {
    return $this->belongsTo(Brand::class);
  }
}
