jQuery(function($) {
  return unless $("#map-canvas").length > 0;
  // load google maps api
  var script = document.createElement('script');
  script.src = "//maps.googleapis.com/maps/api/js?sensor=false&callback=initialize";
  document.body.appendChild(script);
});

var styles = [
  {
    "featureType": "road.highway",
    "stylers": [
      { "hue": "#ff7554" }
    ]
  },{
    "featureType": "transit.station",
    "stylers": [
      { "hue": "#ff7554" }
    ]
  },{
    "featureType": "water",
    "stylers": [
      { "color": "#5CA0BD" }
    ]
  },{
    "featureType": "landscape.man_made",
    "elementType": "geometry",
    "stylers": [
      { "color": "#ffb4a2" },
      { "weight": 0.1 },
      { "saturation": -85 }
    ]
  },{
    "featureType": "poi.park",
    "elementType": "geometry.fill",
    "stylers": [
      { "color": "#A2E84C" },
      { "saturation": -41 }
    ]
  },{
    "featureType": "poi.business",
    "stylers": [
      { "hue": "#ff7554" }
    ]
  }
]

var url = window.location.href + "/marker.json";

function initialize() {
    
  var markerApi = function(){
    return $.ajax({
    type: "GET",
    url: url,
    dataType: "json"
    });
  }

  var drawMap = markerApi().done(
    function(data){
      var lat = data["marker"]["latitude"];
      var lon = data["marker"]["longitude"];
      var coordinates = new google.maps.LatLng(lat, lon);
      var map;
      var mapOptions = {
      center: coordinates,
      zoom: 15,
      disableDefaultUI: true,
      styles: styles
    };
      
    map = new google.maps.Map(document.getElementById("map-canvas"),
mapOptions);

    marker = new google.maps.Marker({
      position: coordinates,
      map: map,
    });

  });
  
}