<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\Auth;
use App\Http\Menus\Menus;

class GetMenu
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if (Auth::check()){
            $roles =  Auth::user()->roles;
            //var_dump('AAAAAAAAAAAAAA');
        }else{
            $roles = '';
            //var_dump('BBBBBBBBBBBBBB');
        }
        //var_dump($roles);
        //die();
        $menus = new Menus();
        view()->share('menu', $menus->get( $roles ) );

        return $next($request);
    }
}