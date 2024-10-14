import 'package:deliveryapp/constant.dart';
import 'package:deliveryapp/features/Home/widgets/homeview_body.dart';
import 'package:flutter/material.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: const SafeArea(
        child: HomeviewBody(),
      ),
      bottomNavigationBar: Container(
        height: size.height*0.15,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.home_filled,
                  color: red,
                  size: size.height*0.04,
                ),
                const SizedBox(width: 5),
                const CircleAvatar(
                  radius: 3,
                  backgroundColor: Colors.red,
                )
              ],
            ),
            Icon(
              Icons.favorite_outline_rounded,
              color: grey,
              size: size.height*0.04,
            ),
            Container(
              height: size.height*0.12,
              width: size.width*0.16,
              padding: const EdgeInsets.all(17),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: red,
              ),
              child: Icon(
                Icons.search,
                size: size.height*0.042,
                color: Colors.white,
              ),
            ),
            Icon(
              Icons.notifications_outlined,
              color: grey,
              size: size.height*0.04,
            ),
            Positioned(
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  color: red,
                  shape: BoxShape.circle,
                ),
                child: const Text(
                  "3",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
