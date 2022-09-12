<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    @include('layouts.bootstrap')
    <title>Laravel Basics - Contact</title>
</head>

<body>
    <div>
        @include('layouts.navbar')
    </div>
    <div class="container">
        <div class="header_signup">
            <h1 class="text-center m-5" style="font-family: 'Jost', sans-serif;">
                Contact Us!
            </h1>
        </div>
        <div class="container w-50 p-4">
            @if (session('saved'))
                <h5 class="p-4 flash_close"
                    style="color: green; font-size:15px; font-family: 'Jost', sans-serif; background-color:aquamarine">
                    {{ session('saved') }}
                    <button class="btn-close" style="float: right;" type="button" id="button_close"></button>
                </h5>
            @endif
            <form action="/contactdetails" method="POST">
                @csrf
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" id="floatingInput" placeholder="Name" name="name" />
                    <label for="floatingInput">Name</label>
                    <span style="color: red; font-size:15px; font-family: 'Jost', sans-serif;">
                        @error('name')
                            {{ $message }}
                        @enderror
                    </span>
                </div>
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" id="floatingInput" placeholder="name@example.com"
                        name="email" />
                    <label for="floatingInput">Email address</label>
                    <span style="color: red; font-size:15px; font-family: 'Jost', sans-serif;">
                        @error('email')
                            {{ $message }}
                        @enderror
                    </span>
                </div>
                <div class="form-floating">
                    <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea" name="comments"></textarea>
                    <label for="floatingTextarea">Comments</label>
                    <span style="color: red; font-size:15px; font-family: 'Jost', sans-serif;">
                        @error('comments')
                            {{ $message }}
                        @enderror
                    </span>
                </div>
                <div class="text-center">
                    <button class="btn btn-primary m-3 btn-lg" type="submit">Send</button>
                </div>
            </form>
        </div>
    </div>
</body>
<script>
    $('#button_close').on('click', function close() {
        $('.flash_close').css('display', 'none');
    })
</script>

</html>
