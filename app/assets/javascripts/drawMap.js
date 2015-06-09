jQuery(function($) {
  // Asynchronously Load the map API
  var script = document.createElement('script');
  script.src = "//maps.googleapis.com/maps/api/js?sensor=false&callback=initialize";
  document.body.appendChild(script);
});

function initialize() {
    var map;
    var mapOptions = {
        center: { lat: 40.7048872, lng: -74.0123737},
        zoom: 15,
        disableDefaultUI: true
    };

    map = new google.maps.Map(document.getElementById("map-canvas"),
    mapOptions);
    // map.setTilt(45);
    // map.fitBounds(bounds);

}