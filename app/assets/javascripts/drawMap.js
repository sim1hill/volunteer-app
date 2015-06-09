jQuery(function($) {
  // Asynchronously Load the map API
  var script = document.createElement('script');
  script.src = "//maps.googleapis.com/maps/api/js?sensor=false&callback=initialize";
  document.body.appendChild(script);
});

// var styles = [
//   {
//     stylers: [
//       { hue: "#ff7454" },
//       { saturation: -1 }
//     ]
//   },{
//     featureType: "road",
//     elementType: "geometry",
//     stylers: [
//       { lightness: 100 },
//       { visibility: "simplified" }
//     ]
//   },{
//     featureType: "road",
//     elementType: "labels",
//     stylers: [
//       { visibility: "off" }
//     ]
//   }
// ];

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

function initialize() {
    var map;
    var mapOptions = {
        center: { lat: 40.7048872, lng: -74.0123737},
        zoom: 15,
        disableDefaultUI: true,
        styles: styles
    };

    map = new google.maps.Map(document.getElementById("map-canvas"),
    mapOptions);
    // map.setTilt(45);
    // map.fitBounds(bounds);

}