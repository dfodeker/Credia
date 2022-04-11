import '/models/activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;

  Destination({
    required this.imageUrl,
    required this.city,
    required this.country,
    required this.description,
  });
}

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/card_1.png',
    city: 'Venice',
    country: 'Italy',
    description: 'Visit Venice for an amazing and unforgettable adventure.',
  ),
  Destination(
    imageUrl: 'assets/card_2.png',
    city: 'Paris',
    country: 'France',
    description: 'Visit Paris for an amazing and unforgettable adventure.',
  ),
  Destination(
    imageUrl: 'assets/card_2.png',
    city: 'New Delhi',
    country: 'India',
    description: 'Visit New Delhi for an amazing and unforgettable adventure.',
  ),
  Destination(
    imageUrl: 'assets/card_1.png',
    city: 'Sao Paulo',
    country: 'Brazil',
    description: 'Visit Sao Paulo for an amazing and unforgettable adventure.',
  ),
  Destination(
    imageUrl: 'assets/card_1.png',
    city: 'New York City',
    country: 'United States',
    description: 'Visit New York for an amazing and unforgettable adventure.',
  ),
];
