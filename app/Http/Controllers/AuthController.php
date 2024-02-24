<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{


    public function login(Request $request){
        // dd(Hash::make(123456));

      
        return view('admin.auth.login');

    }

    public function auth_login_admin(Request $request){
        // dd($request->all());
        $remember = !empty($request->remember)?true:false;
        if(Auth::attempt(['email'=> $request->email, 'password'=> $request->password,  'status'=>0,'role'=>'SuperAdmin'], $remember)){
            return redirect('admin/message');
            
        }
        else if(Auth::attempt(['email'=> $request->email, 'password'=> $request->password, 'status'=>0,'role'=>'Admin'], $remember)){
            return redirect('admin/message');

        }
        else{
            return redirect()->back()->with('error','Please enter correct email & password');
        }
    }
    public function logout_admin(Request $request){
        Auth::logout();
        return redirect('admin');
    }
}
