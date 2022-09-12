<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\registers;

class userDataController extends Controller
{
    public function userData(Request $request)
    {

        $request->validate([
            'fname' => 'required|max:255',
            'lname' => 'required|max:255',
            'email' => 'required|email|max:255|unique:registers',
            'password' => 'required|min:3',
            'country' => 'required|max:15'
        ]);

        $signDet = $request->input();

        $request->session()->flash('fname', $signDet['fname']);

        $register = new registers;
        
        $register->first_name = $signDet['fname'];
        $register->last_name = $signDet['lname'];
        $register->email = $signDet['email'];
        $register->password = $signDet['password'];
        $register->country = $signDet['country'];
        $register->save();
        
        
        
        return redirect('login');
    }

}
