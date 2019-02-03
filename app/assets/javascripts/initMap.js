function initMap() {
  var citymap = {
    paraguana: {
      center: {lat: 11.774318, lng: -70.048814},
    }
  };

  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 6.5,
    center: {lat: 11.683, lng: -68.088},
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
      radius: 20000
    });
  }
};
