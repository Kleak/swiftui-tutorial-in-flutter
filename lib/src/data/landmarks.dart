import 'package:landmarks/src/models/landmark.dart';

final landmarks = [
  {
    "name": "Turtle Rock",
    "category": "featured",
    "city": "Twentynine Palms",
    "state": "California",
    "id": 1001,
    "park": "Joshua Tree National Park",
    "coordinates": {"longitude": -116.166868, "latitude": 34.011286},
    "imageName": "turtlerock",
    "isFavorite": true,
  },
  {
    "name": "Silver Salmon Creek",
    "category": "lakes",
    "city": "Port Alsworth",
    "state": "Alaska",
    "id": 1002,
    "park": "Lake Clark National Park and Preserve",
    "coordinates": {"longitude": -152.665167, "latitude": 59.980167},
    "imageName": "silversalmoncreek"
  },
  {
    "name": "Chilkoot Trail",
    "category": "rivers",
    "city": "Skagway",
    "state": "Alaska",
    "id": 1003,
    "park": "Klondike Gold Rush National Historical Park",
    "coordinates": {"longitude": -135.334571, "latitude": 59.560551},
    "imageName": "chilkoottrail",
    "isFavorite": true
  },
  {
    "name": "St. Mary Lake",
    "category": "lakes",
    "city": "Browning",
    "state": "Montana",
    "id": 1004,
    "park": "Glacier National Park",
    "coordinates": {"longitude": -113.536248, "latitude": 48.69423},
    "imageName": "stmarylake",
    "isFavorite": true,
  },
  {
    "name": "Twin Lake",
    "category": "lakes",
    "city": "Twin Lakes",
    "state": "Alaska",
    "id": 1005,
    "park": "Lake Clark National Park and Preserve",
    "coordinates": {"longitude": -153.849883, "latitude": 60.641684},
    "imageName": "twinlake"
  },
  {
    "name": "Lake McDonald",
    "category": "lakes",
    "city": "West Glacier",
    "state": "Montana",
    "id": 1006,
    "park": "Glacier National Park",
    "coordinates": {"longitude": -113.934831, "latitude": 48.56002},
    "imageName": "lakemcdonald"
  },
  {
    "name": "Charley Rivers",
    "category": "rivers",
    "city": "Eaking",
    "state": "Alaska",
    "id": 1007,
    "park": "Charley Rivers National Preserve",
    "coordinates": {"longitude": -143.122586, "latitude": 65.350021},
    "imageName": "yukon_charleyrivers"
  },
  {
    "name": "Icy Bay",
    "category": "lakes",
    "city": "Icy Bay",
    "state": "Alaska",
    "id": 1008,
    "park": "Wrangell-St. Elias National Park and Preserve",
    "coordinates": {"longitude": -141.518167, "latitude": 60.089917},
    "imageName": "icybay"
  },
  {
    "name": "Rainbow Lake",
    "category": "lakes",
    "city": "Willow",
    "state": "Alaska",
    "id": 1009,
    "park": "State Recreation Area",
    "coordinates": {"longitude": -150.086103, "latitude": 61.694334},
    "imageName": "rainbowlake"
  },
  {
    "name": "Hidden Lake",
    "category": "lakes",
    "city": "Newhalem",
    "state": "Washington",
    "id": 1010,
    "park": "North Cascades National Park",
    "coordinates": {"longitude": -121.17799, "latitude": 48.495442},
    "imageName": "hiddenlake"
  },
  {
    "name": "Chincoteague",
    "category": "rivers",
    "city": "Chincoteague",
    "state": "Virginia",
    "id": 1011,
    "park": "Chincoteague National Wildlife Refuge",
    "coordinates": {"longitude": -75.383212, "latitude": 37.91531},
    "imageName": "chincoteague"
  },
  {
    "name": "Lake Umbagog",
    "category": "lakes",
    "city": "Errol",
    "state": "New Hampshire",
    "id": 1012,
    "park": "Umbagog National Wildlife Refuge",
    "coordinates": {"longitude": -71.056816, "latitude": 44.747408},
    "imageName": "umbagog"
  }
].map((e) => Landmark.fromJson(e)).toList();
