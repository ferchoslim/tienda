<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\Invoice;

class InvoiceController extends Controller
{
  public function purchasesView() {
    $userId = Auth::user()->id;
    $invoices = Invoice::with('products')->where('id_user', $userId)->orderBy('created_at', 'DESC')->get();
    return view('user.invoices')->with([ "invoices" => $invoices ]);
  }
}
