import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:starbuck_clone/routes/routes.dart';

class AlertDialogController extends GetxController {
  final obsecurePassword = true.obs;
  final isPressedAlert = false.obs;
  final isPressedForget = false.obs;

  final emailC = TextEditingController();
  final passwordC = TextEditingController();

  void signUpWithEmail(
    String email,
    String password,
  ) async {
    try {
      FirebaseAuth auth = FirebaseAuth.instance;
      await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      emailC.clear();
      passwordC.clear();
      Get.toNamed(Routes.home);
    } catch (e) {
      if (e.toString().contains("invalid-email")) {
        Get.snackbar(
          'Error',
          'The email not register.',
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    }
  }

  @override
  void onClose() {
    emailC.dispose();
    passwordC.dispose();
    super.onClose();
  }
}
