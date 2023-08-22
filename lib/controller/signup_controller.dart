import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starbuck_clone/routes/routes.dart';

class SignUpController extends GetxController {
  final obsecurePassword = true.obs;
  final obsecureReconfirmPassword = true.obs;

  final checkTheValue = false.obs;
  void toggleValue(bool value) {
    checkTheValue.value = value;
  }

  final emailC = TextEditingController();
  final firstNameC = TextEditingController();
  final passwordC = TextEditingController();
  final reconfirmPasswordC = TextEditingController();
  final lastNameC = TextEditingController();
  final favoriteBeverageC = TextEditingController();

  void signUpWithEmail(
    String email,
    String password,
    String firstname,
    String lastname,
    String favoritebeverage,
  ) async {
    try {
      FirebaseAuth auth = FirebaseAuth.instance;

      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      String userId = userCredential.user!.uid;
      FirebaseFirestore firestore = FirebaseFirestore.instance;

      await firestore.collection('users').doc(userId).set({
        'email': email,
        'firstname': firstname,
        'lastname': lastname,
        'favoritebeverage': favoritebeverage,
      });

      emailC.clear();
      passwordC.clear();
      reconfirmPasswordC.clear();
      firstNameC.clear();
      lastNameC.clear();
      favoriteBeverageC.clear();

      Get.toNamed(Routes.home);
    } catch (e) {
      if (e.toString().contains("email-already-in-use")) {
        Get.snackbar(
          'Error',
          'The email address is already in use by another account.',
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    }
  }
}
