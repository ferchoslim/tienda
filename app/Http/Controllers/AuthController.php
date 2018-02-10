<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Foundation\Auth\ThrottlesLogins;
use App\User;
use App\Cart;
use App\CartProduct;
use App\AppConfig;
use Illuminate\Support\Facades\Validator;
use Auth;
use Session;
use Mail;

class AuthController extends Controller
{
  use ThrottlesLogins;

  /**
   * sincronizado del carrito de compras.
   *
   * @return view
   */
  public function syncCart($sessionId, $userId) {
    $cart = Cart::where('id_user', $userId)->first();
    if (!$cart) {
      $sessionCard = Cart::where('id_session', $sessionId)->first();
      if ($sessionCard) {
        $sessionCard->id_user = $userId;
        $sessionCard->save();
      }
    }
    else {
      $sessionCard = Cart::where('id_session', $sessionId)->first();
      if ($sessionCard) {
        foreach($sessionCard->products as $product) {
          $cartProductCheck = CartProduct::where('id_cart', $cart->id)->where('id_product', $product->id)->first();
          if (!$cartProductCheck) {
            $product->id_cart = $cart->id;
            $product->save();
          }
          else {
            $product->delete();
          }
        }
      }
    }
  }
  /**
   * vista inicio de sesión para usuario.
   *
   * @return view
   */
  public function loginView() {
    return view('auth.login');
  }
  /**
   * vista inicio de sesión para administrador.
   *
   * @return view
   */
  public function adminLoginView() {
    if (Auth::check()) {
      return redirect('/admin');
    }
    return view('admin.login');
  }
  public function username()
  {
    return 'email';
  }
  /**
   * inicio de sesión de usuario.
   *
   * @return redirect o ajax
   */
  public function login(Request $req) {
    if ($this->hasTooManyLoginAttempts($req)) {
      $this->fireLockoutEvent($req);
      if (explode('/', url()->current())[3] == 'admin') {
        return response()->json(['response' => 'HAS_TOO_MANY_LOGIN_ATTEMPTS']);
      }
      return redirect()->back()->with('hasTooManyLoginAttempts', 'true')->withInput($req->all());
    }
    $sessionId = Session::getId();
    if (explode('/', url()->current())[3] == 'admin') {
      $credentials = ['email' => $req->email, 'password' => $req->password, 'role' => 'admin'];
      $credentials_alt = ['email' => $req->email, 'password' => $req->password, 'role' => 'seller'];
      $remember = ($req->remember === 'on') ? true : false;
      if (Auth::attempt($credentials, $remember)) {
        $this->clearLoginAttempts($req);
        return Auth::user();
      }
      else {
        if (Auth::attempt($credentials_alt, $remember)) {
          $this->clearLoginAttempts($req);
          return Auth::user();
        }
        $this->incrementLoginAttempts($req);
        return response()->json(['response' => false]);
      }
    }
    else {
      $credentials = ['email' => $req->email, 'password' => $req->password];
      $remember = ($req->remember === 'on') ? true : false;
      if (Auth::attempt($credentials, $remember)) {
        $this->clearLoginAttempts($req);
        $this->syncCart($sessionId, Auth::user()->id);
        return redirect('/');
      }
      else {
        $this->incrementLoginAttempts($req);
        return redirect()->back()->with('invalidCredentials', 'true')->withInput($req->all());
      }
    }
  }
  /**
   * cerrar sesión.
   *
   * @return redirect
   */
  public function logout() {
    if (Auth::check()) {
      Auth::logout();
    }
    if (explode('/', url()->current())[3] == 'admin')
      return redirect('/admin/login');
    else 
      return redirect('/');
  }
  /**
   * vista registrar.
   *
   * @return view
   */
  public function registerView() {
    return view('auth.register');
  }
  /**
   * registro de usuario.
   *
   * @return redirect
   */
  public function registerUser(Request $req) {
    $validator = Validator::make($req->all(), [
      'firstname' => 'required|string|max:255',
      'lastname' => 'required|string|max:255',
      'email' => 'required|string|email|max:255|unique:users',
      'password' => 'required|string|min:6|max:16|confirmed',
    ]);
    if ($validator->fails()) {
        return redirect('/registrar')->withErrors($validator)->withInput($req->all());
    }
    $user = User::create([
            'firstname' => strtolower($req->firstname),
            'lastname' => strtolower($req->lastname),
            'email' => strtolower($req->email),
            'password' => bcrypt($req->password),
        ]);
    Auth::login($user, true);
    $this->syncCart(Session::getId(), $user->id);
    $fullname = $user->fullname;
    $email = $user->email;
    $app = AppConfig::find(1);
    Mail::send('emails.welcome', ['fullname' => $fullname, 'sm' => $app], function ($m) use ($user, $email, $fullname) {
      $m->from('ventas@celuclock.co', 'CeluClock.co');
      $m->to($email, $fullname)->subject('¡Gracias por registrarte en CeluClock.co!');
    });
    return redirect('/');
  }
}
