<?php

namespace App\Http\Middleware;

use Closure;
use Session;
use Auth;

class AuthAdmin
{
    protected $auth, $role;
    public function __construct()
    {
      if (Auth::user()->role === 'admin' || Auth::user()->role === 'seller')

      /*$this->auth = Auth::check();
      if ($this->auth)
        foreach(Auth::user()->roles as $role) {
          if ($role->role->name === 'admin')
            $this->role = true;
        }*/
    }
    public function handle($request, Closure $next)
    {
      if (!$this->role) {
        if ($request->ajax()) {
          return response('Unauthorized', 401);
        }
        else {
          return redirect('/admin/login');
        }
      }
      return $next($request);
    }
}