import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starbuck_clone/routes/routes.dart';
import 'package:starbuck_clone/view/intro/utils/alert_dialog.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/boarding1.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Material(
                  color: const Color(0xff565654).withOpacity(0.5),
                  child: InkWell(
                    onTap: () => Get.toNamed(Routes.signup),
                    child: SizedBox(
                      width: Get.width * 48 / 100,
                      height: 60,
                      child: const Center(
                        child: Text(
                          "JOIN NOW",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: Get.width * 4 / 100,
                ),
                Material(
                  color: const Color(0xff565654).withOpacity(0.5),
                  child: InkWell(
                    onTap: () => Get.dialog(
                      AlertDialogWidget(),
                    ),
                    child: SizedBox(
                      width: Get.width * 48 / 100,
                      height: 60,
                      child: const Center(
                        child: Text(
                          "SIGN IN",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
