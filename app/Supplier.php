<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Supplier extends Model
{
  protected $fillable = [ 'user_id', 'org_name' ];

  public function user() {
  	return $this->belongsTo(User::class);
  }
}
