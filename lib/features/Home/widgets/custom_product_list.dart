import 'package:deliveryapp/core/utils/productmodel.dart';
import 'package:deliveryapp/core/widgets/product_item_display.dart';
import 'package:deliveryapp/features/Details/product_details.dart';
import 'package:deliveryapp/features/Home/widgets/custom_product_text.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomProductList extends StatelessWidget {
  CustomProductList({super.key});
  List<FoodModel> myFoodModel = foodProduct;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomProductText(),
        const SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: List.generate(
              myFoodModel.length,
              (index) => Padding(
                padding: EdgeInsets.only(
                  left: 25,
                  right: index == myFoodModel.length - 1 ? 25 : 0,
                ),
                child: GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    PageRouteBuilder(
                      transitionDuration: const Duration(seconds: 1),
                      pageBuilder: (_, __, ___) => ProductDetails(
                        product: myFoodModel[index],
                      ),
                    ),
                  ),
                  child: ProductsItemsDisplay(
                    foodModel: myFoodModel[index],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
