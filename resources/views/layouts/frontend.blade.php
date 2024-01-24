<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css" />
    <link rel="stylesheet" href="{{ asset('frontend/assets/libraries/bootstrap/css/bootstrap.min.css') }}" />
    <link rel="stylesheet" href="{{ asset('frontend/assets/css/main.css') }}" />
    <title>Real Estate Website</title>
</head>

<body>
    <header class="bg-white border-bottom">
        <nav class="navbar navbar-expand-lg">
            <div class="container bg-white" style="z-index: 9">
                <div class="nav-logo d-flex align-items-center flex-column">
                    <a class="navbar-brand me-0" href="{{ route('homepage') }}" style="margin-top: -0.5rem"><img
                            src="{{ asset('Logo1.png') }}" width="70px">
                    </a>
                </div>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse bg-white" id="navbarNav">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="{{ route('homepage') }}">Home</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                                aria-expanded="false">
                                Category
                            </a>
                            <ul class="dropdown-menu">
                                @foreach ($categories as $category)
                                    <li>
                                        <a class="dropdown-item"
                                            href="{{ route('category.index', $category->slug) }}">{{ $category->name }}</a>
                                    </li>
                                @endforeach
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('property.index') }}">Properties</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('agent.index') }}">Our Agents</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('contact.index') }}">Contact</a>
                        </li>
                        <a href="{{ route('register') }}"
                            class="btn d-inline-flex justify-content-center align-items-center btn-primary mb-4 mb-md-0">
                            Register / Login
                        </a>
                    </ul>
                </div>
            </div>
        </nav>
    </header>

    @yield('content')

    <footer class="bg-white mt-5 py-4">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="nav-logo text-center" style="width: 100px">
                        <a class="navbar-brand me-0 d-block" href="{{ route('homepage') }}"
                            style="margin-top: -0.9rem"><img src="{{ asset('Logo1.png') }}" width="100px">
                        </a>
                    </div>
                    <p class="mt-2" style="width: 70%">
                        PT. Amanah Lancar Jaya Abadi adalah perusahaan real estate yang berkomitmen untuk memberikan
                        pelayanan yang terbaik kepada pelanggannya. Perusahaan ini memiliki motto "Amanah, Lancar, dan
                        Jaya Abadi" yang menggambarkan visi dan misi perusahaan.
                    </p>
                </div>
                <div class="col-lg-3">
                    <h4>Features</h4>
                    <ul class="list-unstyled">
                        <li>Payments</li>
                        <li>FAQ</li>
                        <li>Term & Conditions</li>
                    </ul>
                </div>
                <div class="col-lg-3">
                    <h4>Get In Touch</h4>
                    <ul class="list-unstyled">
                        <li>Jl. Raya Puspitek, Setu, Kec. Serpong, Kota Tangerang Selatan, Banten 15314</li>
                        <li>amanahlancarjaya@home.com</li>
                        <li>021-7561102</li>
                    </ul>
                    <span>Monday – Friday: 9 am – 5 pm</span>
                    <span>Saturday: 9 am – 1pm</span>
                </div>
            </div>
            <hr />
            <p class="text-center text-teal text-secondary">
                Copyright &copy; PT. Amanah Lancar Jaya Abadi
            </p>
        </div>
    </footer>

    <script src=" {{ asset('frontend/assets/libraries/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
</body>

</html>
