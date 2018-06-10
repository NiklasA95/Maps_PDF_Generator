<!DOCTYPE html>
<html>
  <head>
    <style>
       #map {
        height: 400px;
        width: 400px;
       }
    </style>
  </head>
  <body>
    <h3>Static Map Generator</h3>
    <div id="map"></div>
	<br>
	<button id="button">Generate PDF</button>
	<br>
	<br>
	<img id="static_map" src="">
    <script>
		var map;
		
		function initMap() {
			var uluru = {lat: 48.84098, lng: 10.09598};
			map = new google.maps.Map(document.getElementById('map'), {
				zoom: 12,
				center: uluru
			});
		}
	  
		document.getElementById("button").onclick = function() {getScope()};
	  
		function getScope() {
			var center = map.getCenter();
			var lat = center.lat();
			var long = center.lng();
			var zoom = map.getZoom();
			
			var path = "https://maps.googleapis.com/maps/api/staticmap?center=" + lat + "," + long + "&zoom=" + zoom + "&size=400x400&key=AIzaSyDnldJooKVilRAZYDMeZt_nA2fdLURtqxk";
			document.getElementById('static_map').src = path;
			
			<!--window.location.href = "Maps_PDF_Generator.php?path=" + path;->
		}
		
    </script>
	
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCWwZ4k-qRW0D2brh9bAZBSxZZylbc3vtY&callback=initMap">
    </script>
	
	
  </body>
</html>