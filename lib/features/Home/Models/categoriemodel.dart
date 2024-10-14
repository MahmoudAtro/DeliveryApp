import 'package:deliveryapp/core/utils/assets.dart';

class Category {
  String image, name;

  Category({required this.image, required this.name});
}

List<Category> myCategories = [
  Category(
    image: Assets.burger,
    name: 'Burger',
  ),
  Category(
    image: Assets.pizza,
    name: 'Pizza',
  ),
  Category(
    image: Assets.cupcake,
    name: 'Cup Cake',
  ),
];