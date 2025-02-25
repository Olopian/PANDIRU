<nav class="navbar">
    <div class="navbar-content">
        <form class="search-form">
            <div class="input-group text-white">
                <p>SEMANGAT PAGI!
                    <b class="text-white"> | SELAMAT DATANG DI WEB PENERIMAAN PESERTA DIDIK BARU SMP-SMA YAPIM BIRU-BIRU
                        <i class="mb-1 text-black ml-1 icon-small" width="11" height="11" data-feather="heart"></i>
                    </b>
                </p>
            </div>
        </form>
        <ul class="navbar-nav left">
            <li class="nav-item text-blue">
                <p class="text-white">PPDB
                    <b class="text-white">| SMP-SMA YAPIM BIRU-BIRU</b>
                </p>
            </li>
        </ul>

        <ul class="navbar-nav">
            <li class="nav-item">
            <b class="text-white"> | </b>    
            <a class="btn btn-blue text-white" href="{{ route('daftar') }}">
                    Daftar
                </a>
                <b class="text-white"> | </b>
            </li>
            @guest
                <li class="nav-item">
                <b class="text-white"> | </b> 
                <a class="btn btn-blue text-white" href="{{ route('login') }}">
                        Masuk
                    </a>
                    <b class="text-white"> | </b>
                </li>
            @else
                @php
                    $name = explode(' ',Auth::user()->name);
                @endphp
                <li class="nav-item dropdown nav-profile">
                <b class="text-white"> | </b>
                    <a class="btn btn-blue text-white" href="#" id="profileDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        {{ $name[0] }}
                    </a>
                    <b class="text-white"> | </b>
                    <div class="dropdown-menu" aria-labelledby="profileDropdown">
                        <div class="dropdown-header d-flex flex-column align-items-center">
                            <div class="figure mb-3">
                                <img src="https://via.placeholder.com/80x80" alt="">
                            </div>
                            <div class="info text-center">
                                <p class="name font-weight-bold mb-0">{{ ucfirst(Auth::user()->name) }}</p>
                                <p class="email text-muted mb-3">{{ Auth::user()->email }}</p>
                            </div>
                        </div>
                        <div class="dropdown-body">
                            <ul class="profile-nav p-0 pt-3">
                                <li class="nav-item">
                                    <a href="{{ route('home') }}" class="nav-link">
                                        <i data-feather="box"></i>
                                        <span>Beranda</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="" class="nav-link">
                                        <i data-feather="user"></i>
                                        <span>Akun</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="{{ route('akun_saya') }}" class="nav-link @yield('akun_saya')">
                                        <i data-feather="settings"></i>
                                        <span>Pengaturan</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a  href="{{ route('logout') }}"
                                        class="nav-link"
                                    >
                                        <i data-feather="log-out"></i>
                                        <span>Keluar</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </li>
            @endguest
        </ul>
    </div>
</nav>
<div class="header">
    <div class="filter-black"></div>
    <div class="text-green text-header">
        <div class="row">
            <div class="col-12 col-md-2 col-lg-2">
                <img src="{{ asset('assets/images/logo.png') }}" alt="placeholder" class="pt-2 img-header" style="width:120px;float:right !important;">
            </div>
            <div class="col-12 col-md-10 col-lg-10">
                <h1 class="mb-3">PENERIMAAN DIDIK BARU</h1>
                <h1 class="mb-3">YAPIM BIRU-BIRU(PANDIRU)</h1>
                <a href="{{route('daftar')}}" class="mt-4 btn btn-green text-white">
                    Daftar Sekarang
                </a>
            </div>
        </div>
    </div>
</div>
<div id="banner_carrousel" class="carousel slide carousel-fade" data-bs-ride="carousel">
	<div class="carousel-inner">
		<div class="carousel-item active">
			<img src="{{ asset('assets/images/carousel_1.jpeg') }}" class="img-carousel d-block w-100" alt="...">
		</div>
		<div class="carousel-item">
			<img src="{{ asset('assets/images/carousel_2.jpeg') }}" class="img-carousel d-block w-100" alt="...">
		</div>
		<div class="carousel-item">
			<img src="{{ asset('assets/images/carousel_3.jpeg') }}" class="img-carousel d-block w-100" alt="...">
		</div>
	</div>
</div>