<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class InvoiceProduct extends Model
{
    protected $table = 'invoice_products';
    protected $fillable = ['id_invoice', 'id_product', 'quantity', 'sale_price', 'purchase_price', 'discount'];

    public function product() {
    	return $this->belongsTo('App\Product', 'id_product');
    }
}
