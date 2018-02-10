<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PendingPayment extends Model
{
    protected $table = 'pending_payments';
    protected $fillable = [ 'id_invoice' ];
    
}
