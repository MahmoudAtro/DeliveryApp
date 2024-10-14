import 'package:deliveryapp/constant.dart';
import 'package:deliveryapp/core/utils/productmodel.dart';
import 'package:flutter/material.dart';

class ProductsItemsDisplay extends StatelessWidget {
  final FoodModel foodModel;
  const ProductsItemsDisplay({super.key, required this.foodModel});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Container(
          height: size.height * 0.4,
          width: size.width * 0.5,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(35),
            boxShadow: [
              BoxShadow(
                color: Colors.black12.withOpacity(0.03),
                spreadRadius: 10,
                blurRadius: 20,
              )
            ],
          ),
        ),
        Container(
          width: size.width * 0.4,
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Hero(
                tag: foodModel.name,
                child: Image.asset(
                  foodModel.imageCard,
                  height: size.height * 0.1,
                  width: size.width * 0.15,
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  textAlign: TextAlign.center,
                  foodModel.name,
                  maxLines: 1,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Text(
                foodModel.specialItems,
                style: TextStyle(
                  height: 0.1,
                  letterSpacing: -0.5,
                  fontSize: 14,
                  color: Colors.black.withOpacity(0.7),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    const TextSpan(
                      text: "\$",
                      style: TextStyle(
                        fontSize: 14,
                        color: red,
                      ),
                    ),
                    TextSpan(
                      text: "${foodModel.price}",
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
