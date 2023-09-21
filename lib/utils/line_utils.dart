import 'package:flutter/material.dart';

class LineUtils extends StatelessWidget {
  const LineUtils({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.grey,
      ),
    );
  }
}
