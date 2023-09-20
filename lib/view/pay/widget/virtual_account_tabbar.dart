import 'package:flutter/material.dart';

class VirtualAccountTabBar extends StatelessWidget {
  const VirtualAccountTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
          ),
          const Text(
            'Please click "TOP UP" in the Pay Tab to create your first Virtual Account ',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
