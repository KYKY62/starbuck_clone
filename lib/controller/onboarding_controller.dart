import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:starbuck_clone/routes/routes.dart';

class OnboardingController extends GetxController {
  List<Widget> imageBoarding = [
    Image.asset(
      'assets/boarding1.png',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/boarding2.png',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/boarding3.png',
      fit: BoxFit.cover,
    ),
    Stack(
      children: [
        Image.asset(
          'assets/boarding4.png',
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 18.0),
          child: GestureDetector(
            onTap: () => Get.offAndToNamed(Routes.intro),
            child: const Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "Finish",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  ];
}
