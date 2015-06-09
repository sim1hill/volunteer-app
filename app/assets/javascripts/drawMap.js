jQuery(function($) {
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
    var map;
    var myLatlng = new google.maps.LatLng(40.7048872,-74.0123737)
    var mapOptions = {
        center: myLatlng,
        zoom: 15,
        disableDefaultUI: true,
        styles: styles
    };

    map = new google.maps.Map(document.getElementById("map-canvas"),
    mapOptions);
    
    var getMarker = function(){
  return $.ajax({
    type: "GET",
    url: url,
    dataType: "json"
  });
}

  var jsonResponse = getMarker().done(
      function(data){
      var lat = data["marker"]["latitude"];
      var lon = data["marker"]["longitude"];
      var position = new google.maps.LatLng(lat, lon);

      marker = new google.maps.Marker({
          position: position,
          map: map,
         });
    });
  //   var marker = new google.maps.Marker({
  //     position: myLatlng,
  //     map: map,
  //     title: 'Hello World!'
  // });

}