import 'package:deliveryapp/constant.dart';
import 'package:deliveryapp/features/Home/Models/categoriemodel.dart';
import 'package:deliveryapp/core/utils/productmodel.dart';
import 'package:deliveryapp/features/Home/widgets/customcategorieitem.dart';
import 'package:flutter/material.dart';

class CustomCategorieList extends StatefulWidget {
  const CustomCategorieList({super.key});

  @override
  State<CustomCategorieList> createState() => _CustomCategorieListState();
}

class _CustomCategorieListState extends State<CustomCategorieList> {
  String category = "Burger";
  List<FoodModel> myFoodModel = foodProduct;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: List.generate(
          myCategories.length,
          (index) => GestureDetector(
            onTap: () {
              setState(() {
                category = myCategories[index].name;
                category == "Burger"
                    ? myFoodModel = foodProduct
                    : myFoodModel = foodProduct
                        .where(
                          (element) =>
                              element.category.toLowerCase() ==
                              myCategories[index].name.toLowerCase(),
                        )
                        .toList();
              });
            },
            child: Container(
              margin: const EdgeInsets.only(right: 5),
              padding: const EdgeInsets.symmetric(
                horizontal: 18,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: category == myCategories[index].name ? red : grey1,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Customcategorieitem(
                category: category,
                index: index,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
