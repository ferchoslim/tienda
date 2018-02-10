<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Discount extends Model
{
  protected $fillable = ['user_id', 'product_id', 'percent', 'start', 'end'];
}
