@include('layouts.bootstrap')
<div>
    <nav class="navbar navbar-expand-lg bg-dark navbar-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="/">Laravel Basics</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/userDetail">User Data</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/entries">Entries from DB</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/about">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="/contact">Contact</a>
                </ul>
            </div>
            <div class="navbar-nav me-auto mb-2 mb-lg-0">

                @if (session()->has('name'))
                    {
                    <a href="login" class="d-flex nav-link active">{{ session('name') }}</a>
                    <a href="logout" class="d-flex nav-link active">Logout</a>
                    }
                @else
                    {
                    <a href="login" class="d-flex nav-link active">Login</a>
                    <a href="signup" class="d-flex nav-link active">Signup</a>
                    }
                @endif

            </div>
        </div>
    </nav>
</div>
