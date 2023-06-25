import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starbuck_clone/controller/signup_controller.dart';
import 'package:starbuck_clone/view/sign_up/utils/textform_password_widget.dart';
import 'package:starbuck_clone/view/sign_up/utils/textform_widget.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  final signUpC = Get.find<SignUpController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: const Text(
          "SIGN UP",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        child: ListView(
          children: [
            const Text(
              "Please input your account information",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextFormWidget(
              controller: signUpC.emailC,
              labelText: "Email*",
              hintText: "Email*",
              textinputAction: TextInputAction.next,
            ),
            const SizedBox(
              height: 10.0,
            ),
            Obx(
              () => TextFormPasswordWidget(
                controller: signUpC.password,
                obsecureText: signUpC.obsecurePassword.value,
                labelText: 'Password*',
                hintText: 'Password*',
                suffixIcon: GestureDetector(
                  onTap: () => signUpC.obsecurePassword.value =
                      !signUpC.obsecurePassword.value,
                  child: Icon(
                    signUpC.obsecurePassword.value == true
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                ),
                textInputAction: TextInputAction.next,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Obx(
              () => TextFormPasswordWidget(
                controller: signUpC.reconfirmPassword,
                obsecureText: signUpC.obsecureReconfirmPassword.value,
                labelText: 'Reconfirm password*',
                hintText: 'Reconfirm password*',
                suffixIcon: GestureDetector(
                  onTap: () => signUpC.obsecureReconfirmPassword.value =
                      !signUpC.obsecureReconfirmPassword.value,
                  child: Icon(
                    signUpC.obsecureReconfirmPassword.value == true
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                ),
                textInputAction: TextInputAction.done,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              "Please input your personal detail",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextFormWidget(
              controller: signUpC.firstNameC,
              labelText: 'First Name*',
              hintText: 'First Name*',
              textinputAction: TextInputAction.next,
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextFormWidget(
              controller: signUpC.lastNameC,
              labelText: 'Last Name*',
              hintText: 'Last Name*',
              textinputAction: TextInputAction.next,
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextFormWidget(
              controller: signUpC.birthDateC,
              labelText: 'Date of birth*',
              hintText: 'Date of birth*',
              textinputAction: TextInputAction.next,
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextFormWidget(
              controller: signUpC.favoriteBeverageC,
              labelText: 'Favorite Beverage',
              hintText: 'Favorite Beverage',
              textinputAction: TextInputAction.next,
            ),
            const SizedBox(
              height: 20.0,
            ),
            InkWell(
              onTap: () {},
              child: const Row(
                children: [
                  Text(
                    "If you have a referrer code",
                    style: TextStyle(
                      color: Color(0xff007042),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_outlined,
                    size: 24.0,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              "Required*",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            Row(
              children: [
                Obx(
                  () => Checkbox(
                    value: signUpC.checkTheValue.value,
                    onChanged: (value) {
                      signUpC.toggleValue(value!);
                    },
                    checkColor: Colors.white,
                    activeColor: const Color(0xff007042),
                  ),
                ),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "I wish to receive direct marketing",
                        style: TextStyle(
                          fontSize: 11,
                        ),
                      ),
                      Text(
                        "communication from Starbucks Indonesia",
                        style: TextStyle(
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.info_outline,
                  size: 24.0,
                  color: Colors.grey,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
