import 'package:flutter/material.dart';
import 'package:furniture_app_ui/custom_icons/custom_icons_icons.dart';
import 'package:furniture_app_ui/models/cart.dart';
import 'package:furniture_app_ui/models/chair.dart';
import 'package:furniture_app_ui/models/user.dart';


// Chairs
final _deskChair = Chair(
  imageUrl: 'assets/images/deskchair.png',
  name: 'Desk Chair',
  type: 'Fiber and Metal',
  color: 'Black',
  description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
  rating: 4.5,
  price: 299,
  height: 32,
  weight: 30,
  backgorundColor: Colors.yellow[300],
);

final _woodChair = Chair(
  imageUrl: 'assets/images/woodchair.png',
  name: 'Wood Chair',
  type: 'Wood and Metal',
  color: 'Wooden',
  description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
  rating: 4.5,
  price: 249,
  height: 32,
  weight: 30,
  backgorundColor: Color.fromRGBO(237, 214, 180, 1.0),
);

final _dinningChair = Chair(
  imageUrl: 'assets/images/dinningchair.png',
  name: 'Dinning Chair',
  type: 'Wood',
  color: 'Mat Black',
  description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
  rating: 4.8,
  price: 199,
  height: 32,
  weight: 30,
  backgorundColor: Colors.blueGrey[300],
);

final _hvenChair = Chair(
  imageUrl: 'assets/images/hvenchair.png',
  name: 'HvenChair',
  type: 'Leather',
  color: 'Grey',
  description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
  rating: 3.9,
  price: 149,
  height: 36,
  weight: 38,
  backgorundColor: Colors.orange[100],
);

final _odinChair = Chair(
  imageUrl: 'assets/images/odinchair.png',
  name: 'Odin Chair',
  type: 'Leather and wood',
  color: 'Black',
  description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
  rating: 4.9,
  price: 149,
  height: 36,
  weight: 45,
  backgorundColor: Colors.black54,
);

final _royalChair = Chair(
  imageUrl: 'assets/images/royalchair.png',
  name: 'Royal Chair',
  type: 'Leather and wood',
  color: 'Black',
  description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
  rating: 4.9,
  price: 349,
  height: 32,
  weight: 38,
  backgorundColor: Colors.blueGrey[200],
);

final _loungeChair = Chair(
  imageUrl: 'assets/images/loungechair.png',
  name: 'Lounge Chair',
  type: 'Leather and wood',
  color: 'White',
  description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
  rating: 4.7,
  price: 399,
  height: 28,
  weight: 30,
  backgorundColor: Colors.deepPurple[200],
);

final List<Chair> popular = [
  _deskChair,
  _royalChair,
  _woodChair,
  _dinningChair,
  _loungeChair,
  _hvenChair,
  _odinChair,
];

final List<Chair> recentlyAdded = [
  _woodChair,
  _deskChair,
  _loungeChair,
  _royalChair,
];

List<IconData> categoryIcon = [
  CustomIcons.office_chair,
  CustomIcons.couch,
  CustomIcons.closet,
  CustomIcons.stand_lamp,
  CustomIcons.desktop,
];

final currentUser = User(
  name: 'Sayuj',
  cart: [
    Cart(
      chair: _deskChair,
      quantity: 3,
    ),
    Cart(
      chair: _woodChair,
      quantity: 1,
    ),
    Cart(
      chair: _royalChair,
      quantity: 2,
    ),
    Cart(
      chair: _odinChair,
      quantity: 3,
    ),
  ],
);
