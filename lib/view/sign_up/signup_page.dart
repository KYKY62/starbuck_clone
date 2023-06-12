import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
              "Please input your phone number",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                const Text(
                  "+62",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const SizedBox(
                    child: Text(
                      "Send OTP",
                      style: TextStyle(
                        color: Color(0xff007042),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              "Verify your mobile number with OTP via sms",
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Input OTP number*',
                hintText: 'Input OTP number*',
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
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
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email*',
                hintText: 'Email*',
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password*',
                hintText: 'Password*',
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                suffixIcon: Icon(Icons.visibility),
              ),
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Reconfirm password*',
                hintText: 'Reconfirm password*',
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                suffixIcon: Icon(Icons.visibility),
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
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'First Name*',
                hintText: 'First Name*',
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Last Name*',
                hintText: 'Last Name*',
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Date of birth*',
                hintText: 'Date of birth*',
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Favorite Beverage',
                hintText: 'Favorite Beverage',
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
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
                Checkbox(
                  value: false, //belum diatur valuenya
                  onChanged: (value) {},
                  checkColor: Colors.white,
                  activeColor: const Color(0xff007042),
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
