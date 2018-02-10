<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserPhone extends Model
{
    protected $table = "users_phones";
    protected $fillable = ["id_user", "phone"];
}
