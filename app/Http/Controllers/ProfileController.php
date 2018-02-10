<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\User;
use App\UserAddress;
use App\UserPhone;
use Illuminate\Support\Facades\Validator;

class ProfileController extends Controller
{
  public function profileView() {
    $user = User::with(['phones', 'addresses'])->find(Auth::user()->id);
    return view('user.profile')->with(['user' => $user]);
  }
  public function profileSave(Request $req) {
    $validator = Validator::make($req->all(), [
      'code' => 'required|numeric',
      'firstname' => 'required|string|max:255',
      'lastname' => 'required|string|max:255',
      'gender' => 'required|in:m,f',
      'birthdate' => 'required|date_format:"Y-m-d',
      'company' => 'string|max:255',
      'address' => 'required|string|max:255',
      'neighborhood' => 'required|string|max:255',
      'department' => 'required|numeric',
      'city' => 'required|numeric',
      'phone' => 'numeric',
      'cellphone' => 'required|numeric',
    ]);
    if ($validator->fails()) {
        return redirect('/perfil')->withErrors($validator)->withInput($req->all());
    }
    $user = Auth::user();
    $user->code = $req->code;
    $user->firstname = $req->firstname;
    $user->lastname = $req->lastname;
    $user->gender = $req->gender;
    $user->birthdate = $req->birthdate;
    $user->company = $req->company;
    $user->save();
    $userAddress = $user->address;
    if ($userAddress) {
      $userAddress->neighborhood = $req->neighborhood;
      $userAddress->address = $req->address;
      $userAddress->state = $req->department;
      $userAddress->city = $req->city;
      $userAddress->phone = $req->phone;
      $userAddress->cellphone = $req->cellphone;
      $userAddress->save(); 
    }
    else {
      UserAddress::create([
        'id_user' => $user->id,
        'neighborhood' => $req->neighborhood,
        'address' => $req->address,
        'state' => $req->department,
        'city' => $req->city,
        'cellphone' => $req->cellphone,
        'phone' => $req->phone
      ]);
    }
    $user = User::with(['phones', 'addresses'])->find(Auth::user()->id);
    if ($req->from == "checkout") {
      return redirect('/pagar');
    }
    return view('user.profile')->with(['user' => $user, 'success' => true]);
  }
}
