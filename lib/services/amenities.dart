class Amenities {
  late String location; //location name for the UI
  late String hours; // the time they are open
  late String image; // url to an asset for the image displayed on the card
  late String appointments; // the amount of appointments available at a specific location
  late String type; // type of amenity
  late String url; // location url for api endpoint
  late String distance; //distance from the location


Amenities({
  required this.location,
  required this.hours,
  required this.image,
  required this.appointments,
  required this.type,
  required this.distance,
});

// required this.url

}

