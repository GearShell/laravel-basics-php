<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    @include('layouts.bootstrap')
    <title>Laravel basics - Login</title>
</head>

<body>
    <div>
        @include('layouts.navbar')
    </div>
    <div class="container">
        <div>
            <h1 class="text-center m-5" style="font-family: 'Jost', sans-serif;">
                Login Here
            </h1>
        </div>
        <div class="container w-50 p-4">
            <x-flash flash='fname' />
            <x-flash flash='error' />

            <form action="/enter" method="POST">
                @csrf
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" id="floatingInput" placeholder="name@example.com"
                        name="email">
                    <label for="floatingInput">Email address</label>
                    <x-error errormsgg='email'/>
                </div>
                <div class="form-floating">
                    <input type="password" class="form-control" id="floatingPassword" placeholder="Password"
                        name="password">
                    <label for="floatingPassword">Password</label>
                    <x-error errormsgg='password'/>
                </div>
                <div class="text-center">
                    <button class="btn btn-success m-3 btn-lg" type="submit">Login</button>
                </div>
            </form>
        </div>  
    </div>
</body>

</html>
