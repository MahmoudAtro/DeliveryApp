import 'package:deliveryapp/constant.dart';
import 'package:flutter/material.dart';

class CustomProductText extends StatelessWidget {
  const CustomProductText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Popular Now",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                const Text(
                  "View All",
                  style: TextStyle(
                    color: orange,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(width: 5),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: orange,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.white,
                    size: 10,
                  ),
                ),
              ],
            )
          ],
        );
  }
}