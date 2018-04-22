<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class MemberLoginController extends Controller {
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

//use AuthenticatesUsers;


    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/';
   protected $brocker = 'member';
    protected $guard = 'member';
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    
    public function __construct() {
        $this->middleware('guest')->except('logout');
    }
     public function showLoginForm()
    {
        return view('front.main_content.members.login');
    }
    public function login( Request $request ) {
    $this->validate( $request, [
      'email' => 'required|email',
      'password' => 'required',
    ]);

    if( auth()->guard( 'member' )->attempt( [
      'email' => $request->input( 'email' ),
      'password' => $request->input( 'password' ),
    ])) {
       return redirect('/');
    } else {
      return view( 'front.main_content.members.login' )->withErrors( [ 'email' => 'Authentication failed' ] );
    }
  }

  protected function guard() {
    return \Auth::guard( 'member' );
  }
    public function logout(Request $request,  $guard = null )
    {
        $this->guard('member')->logout();

        $request->session()->invalidate();

        return redirect('/');
    }

 

}


