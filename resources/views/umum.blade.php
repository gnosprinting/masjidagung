<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css"
   integrity="sha512-xodZBNTC5n17Xt2atTPuE1HxjVMSvLVW9ocqUKLsCC5CXdbqCmblAshOMAS6/keqq/sMZMZ19scR4PsZChSR7A=="
   crossorigin=""/>
   <!-- Make sure you put this AFTER Leaflet's CSS -->
    <script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js"
      integrity="sha512-XQoYMqMTK8LvdxXYG3nZ448hOEQiglfqkJs1NOQV44cWnUrBc8PkAOcXy20w0vlaXaVUearIOBhiXZ5V3ynxwA=="
      crossorigin=""></script>

    <title>Masjid Agung Al Munawwarah</title>
    <link rel="manifest" href="../manifest.webmanifest" />
    <!-- include PWACompat _after_ your manifest -->
    {{-- <script async src="https://unpkg.com/pwacompat" crossorigin="anonymous"></script> --}}
  </head>
  <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
    <!-- Custom styles for this template -->
    <link href="{{asset("vendor/crudbooster/assets/carousel.css")}}" rel="stylesheet" type="text/css"/>
  <body>
    <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
      <div class="carousel-indicators">
        <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2" class=""></button>
        <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3" class="active" aria-current="true"></button>
      </div>
      <div class="carousel-inner">
        <div class="carousel-item">
          <img style="width:100" src="http://localhost/masjidagung/public/uploads/2021-07/masjid-agung-1.jpg" alt="masjid-1">
        </div>
        <div class="carousel-item">
          <img style="width:100" src="http://localhost/masjidagung/public/uploads/2021-07/masjid-agung-2.jpg" alt="masjid-2">
        </div>
        <div class="carousel-item active">
          <img style="width:100" src="http://localhost/masjidagung/public/uploads/2021-07/masjid-agung-3.jpg" alt="masjid-3">
        </div>
      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div>

    <!-- Container Marketing (bawah slider) -->
    <div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <div class="row">
      <div class="col-lg-4"></div>
      <div class="col-lg-4">
        <h1>PENGAJIAN RUTIN</h1> <br>
      </div>
      <div class="col-lg-4"></div>
      @foreach ($pengajian as $p)
      <div class="col-lg-4">
        {{-- <svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"></rect><text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg> --}}
        {{-- <img src="http://localhost/masjidagung/public/uploads/2021-07/masjid-agung-1.jpg" class="rounded-circle" alt=""> --}}

        <h3>{{$p->nama_guru}}</h3>
        <p>{{$p->nama_kegiatan}}</p>
        <p>Pukul : <b>{{$p->jam}}</b> WITA</p>
        {{-- <p><a class="btn btn-secondary" href="#">View details »</a></p> --}}
      </div><!-- /.col-lg-4 -->
      @endforeach
    </div><!-- /.row -->

    <!-- START THE FEATURETTES -->

    <hr class="featurette-divider">

    <div class="row featurette">
      {{-- <div class="col-md-12">
        <h2 class="featurette-heading">First featurette heading. <span class="text-muted">It’ll blow your mind.</span></h2>
        <p class="lead">Some great placeholder content for the first featurette here. Imagine some exciting prose here.</p>
      </div> --}}
      <div id="mapid" style="width: 100%; height: 400px;"></div>
      <script>

      	var mymap = L.map('mapid').setView([-3.46136, 114.82434], 18);

      	L.tileLayer('https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token=pk.eyJ1IjoibWFwYm94IiwiYSI6ImNpejY4NXVycTA2emYycXBndHRqcmZ3N3gifQ.rJcFIG214AriISLbB6B5aw', {
      		maxZoom: 25,
      		attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors, ' +
      			'Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
      		id: 'mapbox/streets-v11',
      		tileSize: 512,
      		zoomOffset: -1
      	}).addTo(mymap);

      	L.marker([-3.46136, 114.82434]).addTo(mymap)
      		.bindPopup("<b>MASJID AGUNG AL MUNAWWARAH</b><br />BANJARBARU").openPopup();

      	// L.circle([51.508, -0.11], 500, {
      	// 	color: 'red',
      	// 	fillColor: '#f03',
      	// 	fillOpacity: 0.5
      	// }).addTo(mymap).bindPopup("I am a circle.");

      	// L.polygon([
      	// 	[51.509, -0.08],
      	// 	[51.503, -0.06],
      	// 	[51.51, -0.047]
      	// ]).addTo(mymap).bindPopup("I am a polygon.");


      	var popup = L.popup();

      	function onMapClick(e) {
      		popup
      			.setLatLng(e.latlng)
      			.setContent("You clicked the map at " + e.latlng.toString())
      			.openOn(mymap);
      	}

      	mymap.on('click', onMapClick);

      </script>
    </div>

    {{-- <hr class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-7 order-md-2">
        <h2 class="featurette-heading">Oh yeah, it’s that good. <span class="text-muted">See for yourself.</span></h2>
        <p class="lead">Another featurette? Of course. More placeholder content here to give you an idea of how this layout would work with some actual real-world content in place.</p>
      </div>
      <div class="col-md-5 order-md-1">
        <svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#eee"></rect><text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text></svg>

      </div>
    </div> --}}

    {{-- <hr class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-7">
        <h2 class="featurette-heading">And lastly, this one. <span class="text-muted">Checkmate.</span></h2>
        <p class="lead">And yes, this is the last block of representative placeholder content. Again, not really intended to be actually read, simply here to give you a better view of what this would look like with some actual content. Your content.</p>
      </div>
      <div class="col-md-5">
        <svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#eee"></rect><text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text></svg>

      </div>
    </div> --}}

    <hr class="featurette-divider">

    <!-- /END THE FEATURETTES -->

  </div>
    <!-- End Container Maeketing -->

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-eMNCOe7tC1doHpGoWe/6oMVemdAVTMs2xqW4mwXrXsW0L84Iytr2wi5v2QjrP/xp" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js" integrity="sha384-cn7l7gDp0eyniUwwAZgrzD06kc/tftFf19TOAs2zVinnD/C7E91j9yyk5//jjpt/" crossorigin="anonymous"></script>
    -->
  </body>
</html>
