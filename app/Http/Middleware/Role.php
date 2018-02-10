<?php

namespace App\Http\Middleware;

use Closure;
use Session;
use Auth;

class Role
{
    protected $roles = [
    	'admin' => 3,
    	'seller' => 2,
    	'user' => 1
    ];
    public function handle($request, Closure $next, $role, $guard = null)
    {
    	if (Auth::guard($guard)->guest()) {
        if ($request->ajax() || $request->wantsJson()) {
          return response('Unauthorized.', 401);
        } 
        else {
        	if ($this->roles[$role] == 1)
          	return redirect()->guest('iniciar');
          else
          	return redirect()->guest('admin/login');
        }
      }
      //if ($this->$roles[Auth::user()->role] )
      if ($this->roles[Auth::user()->role] == 1 && $this->roles[$role] > 1)
          return redirect('/');
      /*else {
        if ($this->roles[Auth::user()->role] == 1) {
          return redirect()->guest('/');
      }*/
      /*if ($this->roles[Auth::user()->role] == 1) {
        return redirect()->guest('/');
      }*/
      return $next($request);
    }
}