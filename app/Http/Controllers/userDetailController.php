<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use App\Models\registers;

class userDetailController extends Controller
{
    // public function detail() {
    //     return view('userDetail');
    // }

    public function detail() {
        $data = Http::get('https://jsonplaceholder.typicode.com/users');
        $data = json_decode($data);
        return view('userDetail',['collection'=>$data]);
    }

    public function entries() {
        $register = registers::paginate(10);
        return view('entry',['collection'=>$register]);
    }
}
