import 'package:flutter/material.dart';

class TextFormPasswordWidget extends StatelessWidget {
  final TextEditingController controller;
  final bool obsecureText;
  final String labelText;
  final String hintText;
  final Widget suffixIcon;
  final TextInputAction textInputAction;
  const TextFormPasswordWidget({
    required this.controller,
    required this.obsecureText,
    required this.labelText,
    required this.hintText,
    required this.suffixIcon,
    required this.textInputAction,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obsecureText,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        labelStyle: const TextStyle(
          color: Colors.black,
          fontSize: 14,
        ),
        hintStyle: const TextStyle(
          color: Colors.black,
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        suffixIcon: suffixIcon,
        suffixIconColor: Colors.black,
      ),
      textInputAction: textInputAction,
    );
  }
}
