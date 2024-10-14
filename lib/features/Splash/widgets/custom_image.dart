import 'package:deliveryapp/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Positioned(
            left: size.width * 0.2,
            child: Image.asset(
              Assets.chef,
              height: size.height * 0.5,
            )),
        Positioned(
          child: Image.asset(
            Assets.leaf,
            width: 70,
          ),
          top: 139,
          right: 50,
        ),
        Positioned(
          child: Image.asset(
            Assets.chili,
            width: 80,
          ),
          top: 200,
          right: 20,
        ),
        Positioned(
          child: Image.asset(
            Assets.ginger,
            height: 90,
            width: 90,
          ),
          top: 200,
          left: -20,
        ),
      ],
    );
  }
}
