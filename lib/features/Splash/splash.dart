import 'package:deliveryapp/constant.dart';
import 'package:deliveryapp/core/utils/assets.dart';
import 'package:deliveryapp/features/Splash/widgets/custom_image.dart';
import 'package:deliveryapp/features/Splash/widgets/custom_splash_footer.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height,
              color: imageBackground,
              child: Image.asset(
                Assets.foodpattern,
                color: imageBackground2,
                repeat: ImageRepeat.repeatY,
              ),
            ),
            const CustomImage(),
            const CustomSplashFooter(),
         ],
        ),
      ),
    );
  }
}
