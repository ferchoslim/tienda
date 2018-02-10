<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OrderProduct extends Model
{
    protected $table = "order_products";
    protected $fillable = ["id_order", "id_product", "quantity"];
}
