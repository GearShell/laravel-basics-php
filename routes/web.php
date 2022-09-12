<?php

use App\Http\Controllers\aboutController;
use App\Http\Controllers\userDetailController;
use App\Http\Controllers\contactController;
use App\Http\Controllers\homeController;
use App\Http\Controllers\signupController;
use App\Http\Controllers\userDataController;
use App\Http\Controllers\loginDataController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('home');
// });

// Route::get('/about', function() {
//     return view('about');
// });

// Route::get('/contact', function() {
//     return view('contact');
// });
Route::get("/", [homeController::class, 'homePage']);
Route::get("userDetail", [userDetailController::class, 'detail']);
Route::get("about", [aboutController::class, 'aboutPage']);
Route::get("contact", [contactController::class, 'contactPage']);
Route::get("login", function() {
    if(session()->has('name'))
    {
        return redirect('profile');
    }
    else {
        return view('pages.login');    
    }
});
    
Route::view("profile",'pages.profile');
Route::get('logout', function () {
    if(session()->has('name'))
    {
        session()->pull('name', null);
    }
    return redirect('login');
});
Route::get("signup", [signupController::class, 'signupPage']);
Route::post("/submit", [userDataController::class, 'userData']);
Route::post("/enter", [loginDataController::class, 'loginData']);
Route::post("/contactdetails", [contactController::class, 'contactForm']);
Route::get("/entries", [userDetailController::class, 'entries']);
