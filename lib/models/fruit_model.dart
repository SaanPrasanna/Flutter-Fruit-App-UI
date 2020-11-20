import 'package:flutter/foundation.dart';

class FruitModel {
  FruitModel({
    @required this.name,
    @required this.count,
    @required this.description,
    @required this.image,
    @required this.price,
  });
  final String name;
  final int count;
  final String description;
  final String image;
  final double price;
}

List<FruitModel> fruitsData = [
  new FruitModel(
    name: "Orange",
    count: 3,
    description:
        "A fascinating concept to most, rolled-up strips of ice cream is actually a very common street food in Thailand, Malaysia, Cambodia, and the Philippines.",
    image: "assets/image (1).png",
    price: 60,
  ),
    new FruitModel(
    name: "Grape",
    count: 3,
    description:
        "A fascinating concept to most, rolled-up strips of ice cream is actually a very common street food in Thailand, Malaysia, Cambodia, and the Philippines.",
    image: "assets/image (2).png",
    price: 70,
  ),
    new FruitModel(
    name: "Pineapple",
    count: 3,
    description:
        "A fascinating concept to most, rolled-up strips of ice cream is actually a very common street food in Thailand, Malaysia, Cambodia, and the Philippines.",
    image: "assets/image (3).png",
    price: 90,
  ),
    new FruitModel(
    name: "Banana",
    count: 3,
    description:
        "A fascinating concept to most, rolled-up strips of ice cream is actually a very common street food in Thailand, Malaysia, Cambodia, and the Philippines.",
    image: "assets/image (4).png",
    price: 60,
  ),
    new FruitModel(
    name: "Avocado",
    count: 3,
    description:
        "A fascinating concept to most, rolled-up strips of ice cream is actually a very common street food in Thailand, Malaysia, Cambodia, and the Philippines.",
    image: "assets/image (5).png",
    price: 50,
  ),
    new FruitModel(
    name: "StawBerry",
    count: 3,
    description:
        "A fascinating concept to most, rolled-up strips of ice cream is actually a very common street food in Thailand, Malaysia, Cambodia, and the Philippines.",
    image: "assets/image (6).png",
    price: 100,
  ),
    new FruitModel(
    name: "Apple",
    count: 3,
    description:
        "A fascinating concept to most, rolled-up strips of ice cream is actually a very common street food in Thailand, Malaysia, Cambodia, and the Philippines.",
    image: "assets/image (7).png",
    price: 20,
  ),
];
