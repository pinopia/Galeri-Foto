
<nav class="navbar navbar-expand-md navbar-dark shadow fixed-top" style="background-color: #561C24;">
    <div class="container">
        <a class="navbar-brand h1" href="">
        <img src="galerii/gfoto.png" style="max-width: 7%;">  &nbsp; Galeri Foto
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav">
            <!-- <span class="navbar-toggler-icon"></span> -->
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                @auth
                <x-nav-item label="Dashboard" :link="route('dashboard')" />
                    <x-nav-item label="Beranda" :link="route('home')" />
                    <x-nav-item label="Data Gambar" :link="route('data-foto')" />
                    <x-nav-item label="Profile" :link="route('profile')" />
                    <x-nav-item label="Logout" :link="route('logout')" />
                @else
                    <x-nav-item label="Login" :link="route('login.show')" />
                @endauth
            </ul>
        </div>
    </div>
</nav>

@push('styles')
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            font-size: 14px;
        }
        /* .bar {
            background-color: #3498db;
            height: 5px;
            width: 50px;
            margin-bottom: 10px;
        }
        .welcome-text {
            color: black;
            font-weight: bold;
        }
        .custom-card {
            width: 100%;
            background-color: #ecf0f1;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        }
        .italic-text {
            font-style: italic;
        } */
        /* .italic-text {
            font-style: italic;
            font-size: 14px; /* Adjust the font size as needed */
        /* }
        .card-text {
            font-size: 14px; /* Adjust the font size as needed */
        /* } */ */ */
    </style>
@endpush