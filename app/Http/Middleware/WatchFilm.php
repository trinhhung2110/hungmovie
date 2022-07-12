<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
class WatchFilm
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        if (Auth::user()->is_pay == 0 && Auth::user()->expired_at >= Carbon\Carbon::now()) {
            return redirect()->route('upgrade');
        }
        return $next($request);
    }
}
