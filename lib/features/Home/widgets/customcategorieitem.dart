import 'package:deliveryapp/features/Home/Models/categoriemodel.dart';
import 'package:flutter/material.dart';

class Customcategorieitem extends StatelessWidget {
  const Customcategorieitem({
    super.key,
    required this.category,
    required this.index,
  });
  final String category;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: category == myCategories[index].name
                  ? Colors.white
                  : Colors.transparent,
              shape: BoxShape.circle),
          child: Image.asset(
            myCategories[index].image,
            width: 20,
            height: 20,
          ),
        ),
        const SizedBox(width: 15),
        Text(
          myCategories[index].name,
          style: TextStyle(
            color: category == myCategories[index].name
                ? Colors.white
                : Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
