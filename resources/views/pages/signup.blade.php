<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    @include('layouts.bootstrap')
    <title>Laravel basics - SignUp</title>
</head>

<body>
    <div>
        @include('layouts.navbar')
    </div>
    <div class="container">
        <div class="header_signup">
            <h1 class="text-center m-5" style="font-family: 'Jost', sans-serif;">
                Register Here
            </h1>
        </div>
        <div class="container w-50 p-4">
            <form action="/submit" method="POST">
                @csrf
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" id="floatingInput" placeholder="Name" name="fname" />
                    <label for="floatingInput">First Name</label>
                    <span style="color: red; font-size:15px; font-family: 'Jost', sans-serif;">@error('fname') {{$message}} @enderror</span>
                </div>
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" id="floatingInput" placeholder="Name" name="lname" />
                    <label for="floatingInput">Last Name</label>
                    <span style="color: red; font-size:15px; font-family: 'Jost', sans-serif;">@error('lname') {{$message}} @enderror</span>
                </div>
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" id="floatingInput" placeholder="name@example.com" name="email" />
                    <label for="floatingInput">Email address</label>
                    <span style="color: red; font-size:15px; font-family: 'Jost', sans-serif;">@error('email') {{$message}} @enderror</span>
                </div>
                <div class="form-floating mb-3">
                    <input type="password" class="form-control" id="floatingPassword" placeholder="Password" name="password" />
                    <label for="floatingPassword">Password</label>
                    <span style="color: red; font-size:15px; font-family: 'Jost', sans-serif;">@error('password') {{$message}} @enderror</span>
                </div>
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" id="floatingInput" placeholder="Country" name="country" />
                    <label for="floatingInput">Country</label>
                    <span style="color: red; font-size:15px; font-family: 'Jost', sans-serif;">@error('country') {{$message}} @enderror</span>
                </div>
                <div class="text-center">
                    <button class="btn btn-primary m-2 btn-lg" type="submit">Submit</button> <button type="reset"
                        class="btn btn-outline-dark btn-lg">Clear</button>
                </div>
            </form>
        </div>
    </div>
</body>

</html>








{{-- INSERT INTO `registers` (`id`, `first_name`, `last_name`, `country`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES ('1', 'Ruchir', 'Gupta', 'India', 'ruchir.gupta@test.com', 'qwe@123', NULL, current_timestamp(), current_timestamp()); --}}