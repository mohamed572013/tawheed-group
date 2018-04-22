<?php

namespace App\Http\Controllers\Member;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\Auth;
use Mcamara\LaravelLocalization\Facades\LaravelLocalization;
class LoginController extends Controller {
    /*
      |--------------------------------------------------------------------------
      | Login Controller
      |--------------------------------------------------------------------------
      |
      | This controller handles authenticating users for the application and
      | redirecting them to your home screen. The controller uses a trait
      | to conveniently provide its functionality to your applications.
      |
     */

use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
      
    protected $redirectTo = '/ar';
//       protected $brocker = 'web';
//    protected $guard = 'web'; 
   /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct() {
        $this->middleware('guest:member')->except('logout');
        $currentLocale = app('laravellocalization')->getCurrentLocale();
    }
       public function showLoginForm()
    {
        return view('member.login');
        // $langu= LaravelLocalization::getLocale();
    }
    
      /**
     * Get the guard to be used during authentication.
     *
     * @return \Illuminate\Contracts\Auth\StatefulGuard
     */
    protected function guard()
    {
        return Auth::guard('member');
    }
     public function logout(Request $request , $guard = null)
    {
            
      $this->guard('member')->logout();

        $request->session()->invalidate();

        return redirect('/ar');
    }
}