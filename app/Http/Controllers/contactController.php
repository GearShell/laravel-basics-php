<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\contactdetails;

class contactController extends Controller
{
    public function contactPage()
    {
        return view('contact');
    }

    public function contactForm(Request $request)
    {

        $request->validate([
            'name' => 'required|max:255',
            'email' => 'required|email|max:255',
            'comments' => 'required|max:255'
        ]);

        $condet = $request->input();

        $request->session()->flash('saved', "Thank you, You'll be contacted shortly.");

        $contactdetail = new contactdetails;

        $contactdetail->name = $condet['name'];
        $contactdetail->email = $condet['email'];
        $contactdetail->comments = $condet['comments'];
        $contactdetail->save();



        return redirect('contact');
    }
}
