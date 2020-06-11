import 'package:flutter/material.dart';
import '../widgets/categoryCardWidget.dart';

double height;
double width;

class Assets {
  static final apple = 'assets/apple.jpg';
  static final banana = 'assets/banana.jpg';
  static final carrot = 'assets/carrot.png';
  static final garlic = 'assets/garlic.png';
  static final ginger = 'assets/ginger.png';
  static final grapes = 'assets/grapes.png';
  static final guvava = 'assets/guvava.png';
  static final mango = 'assets/mango.png';
  static final onion = 'assets/onion.png';
  static final potato = 'assets/potato.png';
  static final tomato = 'assets/tomato.png';
}

class AllList {
  static final groceryMemberDeals = [
    CategoryCardWidget(
      itemName: "Ginger",
      itemPrice: "Rs.60.00",
      weightTag: "100G",
      asset: Assets.ginger,
    ),
    CategoryCardWidget(
      itemName: "Garlic",
      itemPrice: "Rs.40.00",
      weightTag: "100G",
      asset: Assets.garlic,
      favtIcon: Icons.favorite,
      favrtIconColor: Color.fromARGB(255, 43, 193, 126),
    ),
    CategoryCardWidget(
      itemName: "Red Onions",
      itemPrice: "Rs.260.00",
      weightTag: "1KG",
      asset: Assets.onion,
    ),
    CategoryCardWidget(
      itemName: "Apples",
      itemPrice: "Rs.160.00",
      weightTag: "1KG",
      asset: Assets.apple,
    ),
    CategoryCardWidget(
      itemName: "Banana",
      itemPrice: "Rs.440.00",
      weightTag: "1KG",
      asset: Assets.banana,
    ),
    CategoryCardWidget(
      itemName: "guvava",
      itemPrice: "Rs.260.00",
      weightTag: "1KG",
      asset: Assets.guvava,
    ),
  ];
  static final groceryDeals = [
    CategoryCardWidget(
      itemName: "Carrot",
      itemPrice: "Rs.490.00",
      weightTag: "1KG",
      asset: Assets.carrot,
      favtIcon: Icons.favorite,
      favrtIconColor: Color.fromARGB(255, 43, 193, 126),
    ),
    CategoryCardWidget(
      itemName: "Mangoes",
      itemPrice: "Rs.210.00",
      weightTag: "1KG",
      asset: Assets.mango,
    ),
    CategoryCardWidget(
      itemName: "Grapes",
      itemPrice: "Rs.140.00",
      weightTag: "100G",
      asset: Assets.grapes,
    ),
    CategoryCardWidget(
      itemName: "guvava",
      itemPrice: "Rs.260.00",
      weightTag: "1KG",
      asset: Assets.guvava,
    ),
    CategoryCardWidget(
      itemName: "Banana",
      itemPrice: "Rs.440.00",
      weightTag: "1KG",
      asset: Assets.banana,
    ),
  ];
  static final trendingDeals = [
    CategoryCardWidget(
      itemName: "Potato",
      itemPrice: "Rs.40.00",
      weightTag: "1KG",
      asset: Assets.potato,
    ),
    CategoryCardWidget(
      itemName: "Tomato",
      itemPrice: "Rs.70.00",
      weightTag: "1KG",
      asset: Assets.tomato,
    ),
    CategoryCardWidget(
      itemName: "Banana",
      itemPrice: "Rs.440.00",
      weightTag: "1KG",
      asset: Assets.banana,
      favtIcon: Icons.favorite,
      favrtIconColor: Color.fromARGB(255, 43, 193, 126),
    ),
  ];
  static final specialSale = [
    CategoryCardWidget(
      itemName: "Grapes",
      itemPrice: "Rs.140.00",
      weightTag: "100G",
      asset: Assets.grapes,
    ),
    CategoryCardWidget(
      itemName: "guvava",
      itemPrice: "Rs.260.00",
      weightTag: "1KG",
      asset: Assets.guvava,
    ),
    CategoryCardWidget(
      itemName: "Banana",
      itemPrice: "Rs.440.00",
      weightTag: "1KG",
      asset: Assets.banana,
    ),
    CategoryCardWidget(
      itemName: "Potato",
      itemPrice: "Rs.40.00",
      weightTag: "1KG",
      asset: Assets.potato,
      favtIcon: Icons.favorite,
      favrtIconColor: Color.fromARGB(255, 43, 193, 126),
    ),
  ];
}
