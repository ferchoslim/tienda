<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class RecentlyViewed extends Model
{
    protected $table = 'recently_viewed';
    protected $fillable = [ 'session_id', 'product_id' ];

    public function product() {
      return $this->belongsTo(Product::class);
    }
}
