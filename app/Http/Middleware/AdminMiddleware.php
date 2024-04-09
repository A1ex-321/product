<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Facades\Auth;

class AdminMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    // public function handle(Request $request, Closure $next): Response
    // {

    //     if(!empty(Auth::check())){
    //         if(Auth::user()->is_admin == 1){
    //             return $next($request);
    //         }
    //         else{
    //             Auth::logout();
    //         return redirect('admin');

    //         }


    //     }

    //     else{
    //         Auth::logout();
    //         return redirect('admin');
    //     }
    // }
    public function handle($request, Closure $next)
{
        //  dd(auth()->check(), auth()->user()->role);

    if (auth()->check() ) {
       return $next($request);

    }
    abort(403, 'Unauthorized'); 

}

}
