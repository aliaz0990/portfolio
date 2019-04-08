function initMap() {
  var citymap = {
    paraguana: {
      center: {lat: -33.4372, lng: -70.6506},
    }
  };

  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 9,
    center: {lat: -33.4372, lng: -70.6506},
    mapTypedId: 'terrain'
  });

  for (var city in citymap) {
    var cityCircle = new google.maps.Circle({
      strokeColor: '#FF0000',
      strokeOpacity: 0.8,
      strokeWeight: 2,
      fillColor: '#FF0000',
      fillOpacity: 0.35,
      map: map,
      center: citymap[city].center,
      radius: 18000
    });
  }
};
