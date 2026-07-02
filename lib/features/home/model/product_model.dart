// call api to get list of items
// response => list of map<String,dynamic>
// parsing to list<ProductModel>
// display list of products

import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/images_app.dart';
import 'package:green_mart/features/beverages/screens/beverages_screen.dart';

class ProductModel {
  final String id;
  final String name;
  final double price;
  final String weight;
  final String image;
  final Object tagKey; // Object مش String -> فرادة حقيقية مضمونة للـ Hero
  final Color? color;
  final Function(BuildContext)? onTap;

  ProductModel({
    required this.id,
    required this.name,
    required this.price,
    required this.weight,
    required this.image,
    Object? tagKey, // اختياري: لو متبعتوش هيتولد تلقائي
    this.color,
    this.onTap,
  }) : tagKey = tagKey ?? UniqueKey(); // مفيش .toString() خالص
}

List<ProductModel> offers = [
  ProductModel(
    id: '1',
    name: 'Banana',
    price: 22,
    weight: '1kg',
    image: AppImages.banana,
  ),
  ProductModel(
    id: '2',
    name: 'Apple',
    price: 24,
    weight: '1kg',
    image: AppImages.apple,
  ),
  ProductModel(
    id: '3',
    name: 'Orange',
    price: 10.5,
    weight: '1kg',
    image: AppImages.gwafa,
  ),
  ProductModel(
    id: '4',
    name: 'Carrot',
    price: 5.5,
    weight: '1kg',
    image: AppImages.felfl,
  ),
];

List<ProductModel> bestSelling = [
  ProductModel(
    id: '2',
    name: 'Apple',
    price: 24,
    weight: '1kg',
    image: AppImages.apple,
  ),
  ProductModel(
    id: '1',
    name: 'Banana',
    price: 22,
    weight: '1kg',
    image: AppImages.banana,
  ),
  ProductModel(
    id: '3',
    name: 'Orange',
    price: 10.5,
    weight: '1kg',
    image: AppImages.gwafa,
  ),
  ProductModel(
    id: '4',
    name: 'Carrot',
    price: 5.5,
    weight: '1kg',
    image: AppImages.felfl,
  ),
];

List<ProductModel> allProducts = [
  ProductModel(
    id: '2',
    name: 'Apple',
    price: 24,
    weight: '1kg',
    image: AppImages.apple,
  ),
  ProductModel(
    id: '1',
    name: 'Banana',
    price: 22,
    weight: '1kg',
    image: AppImages.banana,
  ),
  ProductModel(
    id: '3',
    name: 'Orange',
    price: 10.5,
    weight: '1kg',
    image: AppImages.gwafa,
  ),
  ProductModel(
    id: '4',
    name: 'Carrot',
    price: 5.5,
    weight: '1kg',
    image: AppImages.felfl,
  ),
  ProductModel(
    id: '2',
    name: 'Apple Pro',
    price: 24,
    weight: '1kg',
    image: AppImages.apple,
  ),
  ProductModel(
    id: '1',
    name: 'Banana2',
    price: 22,
    weight: '1kg',
    image: AppImages.banana,
  ),
  ProductModel(
    id: '3',
    name: 'Orange2',
    price: 10.5,
    weight: '1kg',
    image: AppImages.gwafa,
  ),
  ProductModel(
    id: '4',
    name: 'Carrot2',
    price: 5.5,
    weight: '1kg',
    image: AppImages.felfl,
  ),
];

List<ProductModel> drinks = [
  ProductModel(
    id: '5',
    name: 'Mango',
    price: 45,
    weight: '325ml,price',
    image: AppImages.mango,
  ),
  ProductModel(
    id: '6',
    name: 'Coka',
    price: 45,
    weight: '325ml,price',
    image: AppImages.coka,
  ),
  ProductModel(
    id: '7',
    name: 'Cola',
    price: 45,
    weight: '325ml,price',
    image: AppImages.cola,
  ),
  ProductModel(
    id: '8',
    name: 'Appl',
    price: 45,
    weight: '3L,price',
    image: AppImages.juice,
  ),
  ProductModel(
    id: '9',
    name: 'Pepsi',
    price: 45,
    weight: '375ml,price',
    image: AppImages.pepsi,
  ),
  ProductModel(
    id: '10',
    name: 'Sprite',
    price: 45,
    weight: '315ml,price',
    image: AppImages.sprite,
  ),
  ProductModel(
    id: '5',
    name: 'Mango',
    price: 45,
    weight: '325ml,price',
    image: AppImages.mango,
  ),
  ProductModel(
    id: '5',
    name: 'Mango',
    price: 45,
    weight: '325ml,price',
    image: AppImages.mango,
  ),
  ProductModel(
    id: '6',
    name: 'Coka',
    price: 45,
    weight: '325ml,price',
    image: AppImages.coka,
  ),
  ProductModel(
    id: '7',
    name: 'Cola',
    price: 45,
    weight: '325ml,price',
    image: AppImages.cola,
  ),
  ProductModel(
    id: '8',
    name: 'Appl',
    price: 45,
    weight: '3L,price',
    image: AppImages.juice,
  ),
  ProductModel(
    id: '9',
    name: 'Pepsi',
    price: 45,
    weight: '375ml,price',
    image: AppImages.pepsi,
  ),
  ProductModel(
    id: '10',
    name: 'Sprite',
    price: 45,
    weight: '315ml,price',
    image: AppImages.sprite,
  ),
  ProductModel(
    id: '5',
    name: 'Mango',
    price: 45,
    weight: '325ml,price',
    image: AppImages.mango,
  ),
  ProductModel(
    id: '6',
    name: 'Coka',
    price: 45,
    weight: '325ml,price',
    image: AppImages.coka,
  ),
  ProductModel(
    id: '7',
    name: 'Cola',
    price: 45,
    weight: '325ml,price',
    image: AppImages.cola,
  ),
  ProductModel(
    id: '8',
    name: 'Appl',
    price: 45,
    weight: '3L,price',
    image: AppImages.juice,
  ),
  ProductModel(
    id: '9',
    name: 'Pepsi',
    price: 45,
    weight: '375ml,price',
    image: AppImages.pepsi,
  ),
  ProductModel(
    id: '10',
    name: 'Sprite',
    price: 45,
    weight: '315ml,price',
    image: AppImages.sprite,
  ),
];

List<ProductModel> groceries = [
  ProductModel(
    id: '2',
    name: 'Apple',
    price: 24,
    weight: '1kg',
    image: 'assets/images/8-82858_download-sack-of-rice-png 1.png',
    color: Color(0xffF8A44C),
  ),
  ProductModel(
    id: '1',
    name: 'Banana',
    price: 22,
    weight: '1kg',
    image:
        'assets/images/4215936-pulses-png-8-png-image-pulses-png-409_409 1.png',
    color: Color(0xffD3B0E0),
  ),
  ProductModel(
    id: '3',
    name: 'Orange',
    price: 10.5,
    weight: '1kg',
    image: AppImages.gwafa,
    color: Color(0xffF7A593),
  ),
  ProductModel(
    id: '4',
    name: 'Carrot',
    price: 5.5,
    weight: '1kg',
    image: AppImages.felfl,
    color: Color(0xffF8A44C),
  ),
];

List<ProductModel> findProduct = [
  ProductModel(
    id: '5',
    name: 'Beverages',
    price: 5.5,
    weight: '1kg',
    image: 'assets/images/pngfuel 6.png',
    color: Color(0xffF7A593).withAlpha(50),
    onTap: (context) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const BeveragesScreen()),
      );
    },
  ),
  ProductModel(
    id: '2',
    name: 'Cooking Oil & Ghee',
    price: 24,
    weight: '1kg',
    image: 'assets/images/Group 6835.png',
    color: Color(0xffD3B0E0).withAlpha(50),
    onTap: (context) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const BeveragesScreen()),
      );
    },
  ),
  ProductModel(
    id: '1',
    name: 'Frash Fruits & Vegetable',
    price: 22,
    weight: '1kg',
    image: 'assets/images/pngfuel 6 (1).png',
    color: Color(0xffF7A593).withAlpha(50),
    onTap: (context) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const BeveragesScreen()),
      );
    },
  ),
  ProductModel(
    id: '3',
    name: 'Bakery & Snacks',
    price: 10.5,
    weight: '1kg',
    image: 'assets/images/pngfuel 6 (2).png',
    color: Color(0xffF7A593).withAlpha(50),
    onTap: (context) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const BeveragesScreen()),
      );
    },
  ),
  ProductModel(
    id: '4',
    name: 'Meat & Fish',
    price: 5.5,
    weight: '1kg',
    image: 'assets/images/pngfuel 9.png',
    color: Color(0xff53B175).withAlpha(50),
    onTap: (context) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const BeveragesScreen()),
      );
    },
  ),
  ProductModel(
    id: '6',
    name: 'Dairy & Eggs',
    price: 5.5,
    weight: '1kg',
    image: 'assets/images/pngfuel.png',
    color: Color(0xffD3B0E0).withAlpha(50),
    onTap: (context) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const BeveragesScreen()),
      );
    },
  ),
  ProductModel(
    id: '2',
    name: 'Cooking Oil & Ghee',
    price: 24,
    weight: '1kg',
    image: 'assets/images/Group 6835.png',
    color: Color(0xffD3B0E0).withAlpha(50),
    onTap: (context) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const BeveragesScreen()),
      );
    },
  ),
  ProductModel(
    id: '1',
    name: 'Frash Fruits & Vegetable',
    price: 22,
    weight: '1kg',
    image: 'assets/images/pngfuel 6 (1).png',
    color: Color(0xffF7A593).withAlpha(50),
    onTap: (context) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const BeveragesScreen()),
      );
    },
  ),
  ProductModel(
    id: '3',
    name: 'Bakery & Snacks',
    price: 10.5,
    weight: '1kg',
    image: 'assets/images/pngfuel 6 (2).png',
    color: Color(0xffF7A593).withAlpha(50),
    onTap: (context) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const BeveragesScreen()),
      );
    },
  ),
  ProductModel(
    id: '4',
    name: 'Meat & Fish',
    price: 5.5,
    weight: '1kg',
    image: 'assets/images/pngfuel 9.png',
    color: Color(0xff53B175).withAlpha(50),
    onTap: (context) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const BeveragesScreen()),
      );
    },
  ),
  ProductModel(
    id: '5',
    name: 'Beverages',
    price: 5.5,
    weight: '1kg',
    image: 'assets/images/pngfuel 6.png',
    color: Color(0xffF7A593).withAlpha(50),
  ),
  ProductModel(
    id: '6',
    name: 'Dairy & Eggs',
    price: 5.5,
    weight: '1kg',
    image: 'assets/images/pngfuel.png',
    color: Color(0xffD3B0E0).withAlpha(50),
  ),
];
