<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserAddress extends Model
{
    protected $table = 'users_addresses';
    protected $fillable = ['id_user', 'neighborhood', 'address', 'state', 'city', 'phone', 'cellphone'];
}
