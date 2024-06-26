import 'package:untitled3/model/user.dart';

class Apartment {
  String? id;
  String? title;
  String? image;
  String? location;
  String? description;
  double? rating;
  int? price;
  String? type;
  int? users;
  List<String>? facilities;
  User? owner;

  Apartment({
    this.description,
    this.facilities,
    this.id,
    this.image,
    this.location,
    this.owner,
    this.price,
    this.rating,
    this.title,
    this.type,
    this.users,
  });
}

final listApartmentTop = [
  Apartment(
    description:
        "Experience pure luxury and comfort in our Snow Suite Room. Nestled in a winter wonderland, it offers breathtaking views and cozy accommodations for a perfect getaway.",
    facilities: ['2 Bedrooms', '1 Toilet', '1 Living Room', '1 Kitchen'],
    id: 'apartment1',
    image: 'assets/apartment1.jpg',
    location: 'Bali, Indonesia',
    owner: listUser[0],
    price: 230,
    rating: 4.5,
    title: 'Snow Suite Room',
    type: 'Hot this month',
    users: 13,
  ),
  Apartment(
    description:
        "Discover the epitome of summer bliss at our hotel, where every moment is infused with sun-drenched delight and effortless luxury. ",
    facilities: ['2 Bedrooms', '1 Toilet', '1 Living Room', '1 Kitchen'],
    id: 'apartment2',
    image: 'assets/apartment2.jpg',
    location: 'Garut, Indonesia',
    owner: listUser[1],
    price: 173,
    rating: 4.5,
    title: 'SummerTime Room',
    type: 'Great Place',
    users: 40,
  ),
];
final listApartmentNear = [
  Apartment(
    description:
        "Whether you're enjoying a warm drink by the fireplace or taking in the crisp air on your private terrace, each moment in the Valley Autumn Room promises tranquility and comfort in harmony with the season.",
    facilities: ['2 Bedrooms', '1 Toilet', '1 Living Room', '1 Kitchen'],
    id: 'apartment3',
    image: 'assets/apartment3.jpg',
    location: 'Bandung, Indonesia',
    owner: listUser[2],
    price: 221,
    rating: 4.5,
    title: 'Valley Autumn Room',
    type: 'Pure',
    users: 39,
  ),
  Apartment(
    description:
        " Step into our Spring Room and embrace the essence of renewal and blooming beauty. Designed to reflect the vibrant spirit of the season, this room welcomes you with fresh, light-filled spaces adorned with soft pastels and floral accents.",
    facilities: ['2 Bedrooms', '1 Toilet', '1 Living Room', '1 Kitchen'],
    id: 'apartment4',
    image: 'assets/apartment4.jpg',
    location: 'Garut, Indonesia',
    owner: listUser[1],
    price: 180,
    rating: 4.5,
    title: 'Spring Ly Room',
    type: 'Pure',
    users: 21,
  ),
];
