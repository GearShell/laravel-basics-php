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
            <h1 style="font-family: 'Jost', sans-serif;">Users from Database</h1>
        </div>
        <div class="text-center container align-item-center">
            <table class="table table-bordered table-striped my-5">
                <tr style="font-family: 'Jost', sans-serif;">
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                    <th>Country</th>
                    <th>Creation Date</th>
                </tr>
                @foreach ($collection as $item)
                    <tr>
                        <td>{{ $item->first_name }}</td>
                        <td>{{ $item->last_name }}</td>
                        <td>{{ $item->email }}</td>
                        <td>{{ $item->country }}</td>
                        <td>{{ $item->created_at }}</td>
                    </tr>
                @endforeach

            </table>
            <div>
                {{$collection->links("pagination::bootstrap-5")}}
            </div>
            <style>
                .w-5 {
                    display: none;
                }
            </style>
        </div>
    </div>
</body>

</html>
