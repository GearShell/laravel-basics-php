<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    @include('layouts.bootstrap')
    <title>Laravel Basics - User Details</title>
</head>

<body>
    <div>
        @include('layouts.navbar')
    </div>
    <div class="container my-5">
        <div class="text-center">
            <h1 style="font-family: 'Jost', sans-serif;">User Details</h1>
        </div>
        <div class="text-center container align-item-center">
            <table class="table table-bordered table-striped my-5">
                <tr style="font-family: 'Jost', sans-serif;">
                    <th>Name</th>
                    <th>Username</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Website</th>
                </tr>
                @foreach ($collection as $item)
                    <tr>
                        <td>{{ $item->name }}</td>
                        <td>{{ $item->username }}</td>
                        <td>{{ $item->email }}</td>
                        <td>{{ $item->phone }}</td>
                        <td>{{ $item->website }}</td>
                    </tr>
                @endforeach

            </table>
        </div>
    </div>
</body>

</html>
