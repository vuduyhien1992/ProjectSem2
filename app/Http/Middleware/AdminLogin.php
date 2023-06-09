<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Facades\Auth;
class AdminLogin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        if(Auth::check() && Auth::user()->admin == '1'){
            return $next($request);
        }else if(Auth::check()){
            return redirect('/admin/signin')->with('permission_deinied','Your account has no permission to enter Admin site');
        }else{
            return redirect('/admin/signin');
        }
    }
}
