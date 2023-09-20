import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var currentTab = 0.obs;
  var currentSlider = 0.obs;
  final CarouselController carouselController = CarouselController();

  var currentPayTab = 0.obs;
  final cardNumberC = TextEditingController();
  final pinC = TextEditingController();
  final obsecurePin = true.obs;

  current(int value) {
    currentTab.value = value;
  }

  final List<String> imgList = [
    'assets/banner.png',
    'assets/banner.png',
    'assets/banner.png',
  ];
}
