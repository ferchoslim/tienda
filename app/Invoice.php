<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Invoice extends Model
{
    protected $table = "invoices";
    protected $fillable = ["id_user", "ref_payco", "amount", 'profit', "shipping_address"];

    public function products() {
    	return $this->hasMany("App\InvoiceProduct", 'id_invoice');
    }
}
