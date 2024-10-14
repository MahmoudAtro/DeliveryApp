import 'package:deliveryapp/core/utils/productmodel.dart';
import 'package:deliveryapp/features/Details/widgets/product_details_body.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key, required this.product});
  final FoodModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: FoodDetailScreen(product: product,)),
    );
  }
}