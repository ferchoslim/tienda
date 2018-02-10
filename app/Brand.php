<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Brand extends Model
{
  protected $fillable = ["name", "image"];
  public function references() {
  	return $this->hasMany(Reference::class)->orderBy('name');
  }
}
