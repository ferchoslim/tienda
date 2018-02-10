<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ProductAction extends Model
{
    protected $table = 'product_actions';
    protected $fillable = ['id_product', 'id_user', 'action', 'val'];
}
