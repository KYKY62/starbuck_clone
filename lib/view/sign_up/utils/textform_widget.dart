import 'package:flutter/material.dart';

class TextFormWidget extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final TextInputAction textinputAction;
  const TextFormWidget({
    required this.controller,
    required this.labelText,
    required this.hintText,
    required this.textinputAction,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
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
      ),
      textInputAction: textinputAction,
    );
  }
}
