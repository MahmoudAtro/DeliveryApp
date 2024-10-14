import 'package:deliveryapp/features/Home/widgets/custom_categorie_list.dart';
import 'package:flutter/material.dart';

class CustomHomeCategorie extends StatelessWidget {
  const CustomHomeCategorie({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Categories",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 10),
        CustomCategorieList(),
      ],
    );
  }
}
