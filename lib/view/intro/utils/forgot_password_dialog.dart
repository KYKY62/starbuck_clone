import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starbuck_clone/controller/alert_dialog_controller.dart';
import 'package:starbuck_clone/routes/routes.dart';

class ForgetPasswordDialog extends StatelessWidget {
  ForgetPasswordDialog({super.key});
  final alertdialogC = Get.put(AlertDialogController());
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        'Forget Password',
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
            textInputAction: TextInputAction.done,
          ),
          const SizedBox(
            height: 5.0,
          ),
          const Text(
            textAlign: TextAlign.justify,
            "You will receive a password reset email if the provided email is already registered",
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
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
                    alertdialogC.isPressedForget.value = false;
                    Get.back();
                  },
                  onTapDown: (_) {
                    // ketika ditekan
                    alertdialogC.isPressedForget.value = true;
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
                          color: alertdialogC.isPressedForget.value == false
                              ? const Color(0xFF00704A)
                              : Colors.black.withOpacity(0.3),
                          offset: Offset(
                            0,
                            alertdialogC.isPressedForget.value == false ? 1 : 6,
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
              GestureDetector(
                onTap: () => Get.toNamed(Routes.home),
                child: Container(
                  width: 80,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.green,
                  ),
                  child: const Center(
                    child: Text(
                      "SEND",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
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
