// Create a map centered on a specific location
var map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: -33.867, lng: 151.195},
    zoom: 15
  });

  // Search for nearby restaurants within a 500m radius
  var request = {
    location: map.getCenter(),
    radius: '500',
    type: ['restaurant']
  };

  var service = new google.maps.places.PlacesService(map);
  service.nearbySearch(request, function(results, status) {
    if (status === google.maps.places.PlacesServiceStatus.OK) {
      // Format the results as a JSON object
      var json = {
        "restaurants": []
      };
      for (var i = 0; i < results.length; i++) {
        var restaurant = {
          "name": results[i].name,
          "address": results[i].vicinity,
          "phone": results[i].formatted_phone_number,
          "rating": results[i].rating
        };
        json.restaurants.push(restaurant);
      }
      // Export the JSON object to a file or use it in your application
      console.log(JSON.stringify(json));
    }
  });
