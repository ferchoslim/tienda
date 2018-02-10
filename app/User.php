<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use App\Notifications\ResetPasswordNotification;
use Illuminate\Support\Facades\Hash;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'code', 'firstname', 'lastname', 'email', 'bithdate', 'password', 'gender', 'role'
    ];
    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];
    /*public function setPasswordAttribute($password)
    {   
        //$this->attributes['password'] = bcrypt($password);
        $this->attributes['password'] = Hash::make($password);
    }*/
    public function phones() {
        return $this->hasMany('App\UserPhone', 'id_user');
    }
    public function addresses() {
        return $this->hasMany('App\UserAddress', 'id_user');
    }
    public function address() {
        return $this->hasOne('App\UserAddress', 'id_user');
    }
    public function sendPasswordResetNotification($token)
    {
        $this->notify(new ResetPasswordNotification($token));
    }
    public function getFullNameAttribute() {
        return $this->firstname.' '.$this->lastname;
    }
}
