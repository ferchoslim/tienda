<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $table = "orders";
    protected $fillable = ["id_cart"];

    public function products() {
    	return $this->hasMany("App\OrderProducts", 'id_order');
    }
}
