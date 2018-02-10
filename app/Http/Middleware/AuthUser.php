<?php

namespace App\Http\Middleware;

use Closure;
use Session;
use Auth;

class AuthUser
{
    protected $auth, $role;

    public function __construct()
    {
      $this->auth = Auth::check();
      if ($this->auth)
        foreach(Auth::user()->roles as $role) {
          if ($role->role->name === 'user')
            $this->role = true;
        }
    }
    public function handle($request, Closure $next)
    {
      if (!$this->role) {
        if ($request->ajax()) {
          return response('Unauthorized', 401);
        }
        else {
          return redirect('/iniciar');
        }
      }
      return $next($request);
    }
}