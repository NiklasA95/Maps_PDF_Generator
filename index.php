<!DOCTYPE html>
<html>
    <head>
        <style>
            #map {
                width: 360px;
                height: 360px;
            }
        </style>
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    </head>
    <body>
        <h1>Google Static Maps Generator</h1>
        <div id="map"></div>
        <br/>
        <button id="button">Generate PDF</button>
        <br/>
        <br/>
        <img id="static_map" src="">
        
        <script>
            var map;

            function initMap() {
                var position = {lat: 48.84098, lng: 10.09598};
                map = new google.maps.Map(document.getElementById('map'), {zoom: 12, center: position});
            }

            document.getElementById("button").onclick = function() {generatePDF()};

            function generatePDF() {
                var center = map.getCenter();
                var lat = center.lat();
                var long = center.lng();
                var zoom = map.getZoom();
                var url = "https://maps.googleapis.com/maps/api/staticmap?center=" + lat + "," + long + "&zoom=" + zoom + "&size=360x360&key=AIzaSyDnldJooKVilRAZYDMeZt_nA2fdLURtqxk";

                document.getElementById('static_map').src = url;
                $.post('generatePDF.php', {posturl:url});

            }
        </script>

        <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCWwZ4k-qRW0D2brh9bAZBSxZZylbc3vtY&callback=initMap"></script>
    </body>
</html>