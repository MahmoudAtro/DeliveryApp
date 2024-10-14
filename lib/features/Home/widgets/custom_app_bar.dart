import 'package:deliveryapp/constant.dart';
import 'package:deliveryapp/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 45,
          width: 45,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: grey1,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.asset(Assets.dash),
        ),
        const Row(
          children: [
            Icon(
              Icons.location_on_outlined,
              size: 18,
              color: red,
            ),
            SizedBox(width: 5),
            Text(
              "Syria, Aleppo",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            SizedBox(width: 5),
            Icon(
              Icons.keyboard_arrow_down_rounded,
              size: 18,
              color: orange,
            ),
          ],
        ),
        Container(
          height: 45,
          width: 45,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: grey1,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.asset(Assets.profile),
        ),
      ],
    );
  }
}
