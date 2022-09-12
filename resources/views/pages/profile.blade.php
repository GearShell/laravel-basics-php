<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    @include('layouts.bootstrap')
    <title>Laravel Basics - Welcome to your Profile</title>
</head>
<body>
    <div>@include('layouts.navbar')</div>
    <div class="container text-center my-5">
        <div>
            <h1 style="font-family: 'Jost', sans-serif;">User Details</h1>
        </div>
        <div>
            <h4 class="p-4" style="color: blue; font-size:25px; font-family: 'Jost', sans-serif;">Hello, Welcome to your profile: {{session('name')}}</h4>
        </div>
        <div>
            <a href="logout" class="btn btn-outline-danger btn-lg m-2">Logout</a>
        </div>
    </div>
</body>
</html>