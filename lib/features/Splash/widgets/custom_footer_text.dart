import 'package:flutter/material.dart';

class CustomFooterText extends StatelessWidget {
  const CustomFooterText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                  text: "The Fastest In Delivery ",
                  style: TextStyle(color: Colors.black),
                ),
                TextSpan(
                  text: "Food",
                  style: TextStyle(color: Colors.red),
                ),
              ]),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Our job is to filling your tummy with delicious food and fast delivery.",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w300,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 25),
      ],
    );
  }
}
