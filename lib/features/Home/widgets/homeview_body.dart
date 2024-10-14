import 'package:deliveryapp/features/Home/widgets/custom_app_bar.dart';
import 'package:deliveryapp/features/Home/widgets/custom_home_categorie.dart';
import 'package:deliveryapp/features/Home/widgets/custom_home_offer.dart';
import 'package:deliveryapp/features/Home/widgets/custom_product_list.dart';
import 'package:flutter/material.dart';

class HomeviewBody extends StatelessWidget {
  const HomeviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 27,
          vertical: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const CustomAppBar(),
            const SizedBox(
              height: 20,
            ),
            const CustomHomeOffer(),
            const SizedBox(height: 30,),
            const CustomHomeCategorie(),
            const SizedBox(height: 20,),
            CustomProductList(),
          ],
        ),
      ),
    );
  }
}
