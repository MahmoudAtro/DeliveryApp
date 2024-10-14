import 'package:deliveryapp/core/utils/assets.dart';

class FoodModel {
  String imageCard, imageDetail, name, description;
  double price, rate;
  String specialItems;
  String category;
  FoodModel({
    required this.imageCard,
    required this.imageDetail,
    required this.name,
    required this.price,
    required this.rate,
    required this.description,
    required this.specialItems,
    required this.category,
  });
}

List<FoodModel> foodProduct = [
  FoodModel(
      imageCard: Assets.burger,
      imageDetail: Assets.baconburger1,
      name: 'Beef Burger',
      price: 7.59,
      rate: 4.5,
      specialItems: 'Cheesy Mozarella 🧀',
      description: desc,
      category: 'Burger'),
  FoodModel(
      imageCard: Assets.burger,
      imageDetail: Assets.baconburger1,
      name: 'Double Burger',
      price: 10.0,
      rate: 4.9,
      specialItems: 'Double Beef 🍖',
      description: desc,
      category: 'Burger'),
  FoodModel(
    imageCard: Assets.cheeseburger,
    imageDetail: Assets.cheeseburger1,
    name: 'Cheese Burger',
    price: 8.88,
    rate: 4.8,
    specialItems: 'Extra Cheese 🧀',
    description: desc,
    category: 'Burger',
  ),
  FoodModel(
      imageCard: Assets.baconburger,
      imageDetail: Assets.baconburger1,
      name: 'Bacon Burger',
      price: 9.99,
      rate: 5.0,
      specialItems: 'Mix Beef 🥩',
      description: desc,
      category: 'Burger'),
  FoodModel(
      imageCard: Assets.pizza,
      imageDetail: Assets.pizza,
      name: 'Chicken Pizza',
      price: 19.99,
      rate: 4.0,
      specialItems: 'Cheese Pizza 🍕',
      description: desc,
      category: 'Pizza'),
  FoodModel(
    imageCard: Assets.cupcake,
    imageDetail: Assets.cupcakeproduct,
    name: 'Cream Cake',
    price: 5.99,
    rate: 4.7,
    specialItems: 'Mix Cream 🧁',
    description: desc,
    category: 'Cup Cake',
  ),
];
var desc =
    "This is a special types of tiems, often served with cheese, lettuce, tomato, onion, pickles, bacon, or chilis; condiments such as ketchup, mustard, mayonnaise, relish, or a 'specialItems sauce', often a variation of Thousand Island dressing; and are frequently placed on sesame seed buns.";
