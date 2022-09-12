<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\registers;

class loginDataController extends Controller
{
    public function loginData(Request $request)
    {

        $request->validate([
            'email' => 'required|email|max:255',
            'password' => 'required|min:3'
        ]);

        $det = $request->input();

        $register = registers::where('email', $det['email'])->where('password', $det['password'])->first();

        if ($register == null) {

            $request->session()->flash('error', "Incorrect Email or Passsword");
            return redirect('login');
        } else {
            $register = registers::where('email', $det['email'])->first();
            $name = $register->first_name . " " . $register->last_name;
            $request->session()->put('name', $name);
            return redirect('profile');
        }
    }
}
