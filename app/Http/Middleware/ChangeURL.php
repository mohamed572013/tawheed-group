<?php

namespace App\Http\Middleware;

use Closure;

class changeURL extends Middleware {

    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next) {
        print_r("dddddddddddddddddddd");
        return $next($request);
    }

}
