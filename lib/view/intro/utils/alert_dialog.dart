import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starbuck_clone/controller/alert_dialog_controller.dart';
import 'package:starbuck_clone/view/intro/utils/forgot_password_dialog.dart';

class AlertDialogWidget extends StatelessWidget {
  AlertDialogWidget({super.key});
  final alertdialogC = Get.put(AlertDialogController());

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        'Sign In',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 22,
        ),
      ),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Email',
              hintText: 'Email',
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
              labelStyle: TextStyle(
                color: Colors.black,
              ),
            ),
            textInputAction: TextInputAction.next,
          ),
          Obx(
            () => TextFormField(
              obscureText: alertdialogC.obsecureText.value,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Password',
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                labelStyle: const TextStyle(
                  color: Colors.black,
                ),
                suffixIcon: GestureDetector(
                  onTap: () => alertdialogC.obsecureText.value =
                      !alertdialogC.obsecureText.value,
                  child: Icon(
                    alertdialogC.obsecureText.value == true
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                ),
                suffixIconColor: Colors.black,
              ),
            ),
          ),
          InkWell(
            onTap: () => Get.dialog(
              ForgetPasswordDialog(),
            ),
            child: const SizedBox(
              height: 60,
              width: 180,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "FORGET PASSWORD ?",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15.0, bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Obx(
                () => InkWell(
                  borderRadius: BorderRadius.circular(40),
                  onTapUp: (_) {
                    // ketika dilepas
                    alertdialogC.isPressedAlert.value = false;
                    Get.back();
                  },
                  onTapDown: (_) {
                    // ketika ditekan
                    alertdialogC.isPressedAlert.value = true;
                  },
                  child: Container(
                    width: 80,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white,
                      border: Border.all(
                        width: 1,
                        color: Colors.green,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: alertdialogC.isPressedAlert.value == false
                              ? const Color(0xFF00704A)
                              : Colors.black.withOpacity(0.3),
                          offset: Offset(
                            0,
                            alertdialogC.isPressedAlert.value == false ? 1 : 6,
                          ),
                          blurRadius: 1,
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Text(
                        "Cancel",
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 15.0,
              ),
              Container(
                width: 80,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.green,
                ),
                child: const Center(
                  child: Text(
                    "SIGN IN",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
