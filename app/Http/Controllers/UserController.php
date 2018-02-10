<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class UserController extends Controller
{
  public function userProfileView() {
    $user = User::with(['phones', 'addresses'])->find(Auth::user()->id);
    return view('user.profile')->with(['user' => $user]);
  }
  public function userProfileSave(Request $req) {
    $user = Auth::user();
    $user->code = $req->code;
    $user->fullname = $req->fullname;
    $user->gender = $req->gender;
    $user->birthdate = $req->byear.'-'.$req->bmonth.'-'.$req->bday;
    $user->company = $req->company;
    $user->save();
    $addresses = $user->addresses;
    foreach($addresses as $address)
      $address->delete();
      $newAddress = UserAddress::create([
                      'id_user' => $user->id,
                      'neighborhood' => $req->neighborhood,
                      'address' => $req->address,
                      'state' => $req->department,
                      'city' => $req->city
                    ]);
    $c = 1;
    $phones = $user->phones;
    foreach($phones as $phone) {
      $phone->delete();
    }
    while($req['phone'.$c]) {
      $newPhone = UserPhone::create([
                    'id_user' => $user->id,
                    'phone' => $req['phone'.$c]
                  ]);
      $c++;
    }
    $user = User::with(['phones', 'addresses'])->find(Auth::user()->id);
    return view('user.profile')->with(['user' => $user, 'saved' => true]);
  }
}
