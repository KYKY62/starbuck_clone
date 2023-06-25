import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  final obsecurePassword = true.obs;
  final obsecureReconfirmPassword = true.obs;

  final checkTheValue = false.obs;
  void toggleValue(bool value) {
    checkTheValue.value = value;
  }

  final emailC = TextEditingController();
  final firstNameC = TextEditingController();
  final password = TextEditingController();
  final reconfirmPassword = TextEditingController();
  final lastNameC = TextEditingController();
  final birthDateC = TextEditingController();
  final favoriteBeverageC = TextEditingController();
}
