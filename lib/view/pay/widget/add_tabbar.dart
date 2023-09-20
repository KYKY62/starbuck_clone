import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starbuck_clone/controller/home_controller.dart';
import 'package:starbuck_clone/themes/themes.dart';
import 'package:starbuck_clone/utils/textform_password_widget.dart';
import 'package:starbuck_clone/utils/textform_widget.dart';

class AddTabBar extends StatelessWidget {
  AddTabBar({super.key});
  final payC = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Add New Starbucks Card",
            style: TextStyle(
              fontSize: 18,
              color: secondaryColor,
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          const Text(
            "Collect stars and earn Rewards when you pay with a registered card",
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(
            height: 20.0,
          ),
          TextFormWidget(
            controller: payC.cardNumberC,
            labelText: "Card Number",
            hintText: "Card Number",
            textinputAction: TextInputAction.next,
          ),
          const SizedBox(
            height: 10.0,
          ),
          Obx(() => TextFormPasswordWidget(
                controller: payC.pinC,
                obsecureText: payC.obsecurePin.value,
                labelText: "Pin",
                hintText: "Pin",
                suffixIcon: GestureDetector(
                  onTap: () => payC.obsecurePin.value = !payC.obsecurePin.value,
                  child: Icon(
                    payC.obsecurePin.value == true
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                ),
                textInputAction: TextInputAction.done,
              )),
          const SizedBox(
            height: 20.0,
          ),
          Center(
            child: Container(
              width: 100,
              height: 40,
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.circular(32),
              ),
              child: const Center(
                child: Text(
                  "Submit",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
