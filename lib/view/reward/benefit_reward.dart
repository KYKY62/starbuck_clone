import 'package:flutter/material.dart';

class BenefitRewards extends StatelessWidget {
  const BenefitRewards({
    super.key,
    required this.ontap,
  });

  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            GestureDetector(
              onTap: ontap,
              child: const Icon(
                Icons.arrow_back_ios,
              ),
            ),
            const Text("Rewards Benefit")
          ],
        ),
        actions: const [],
      ),
      body: const Text("text"),
    );
  }
}
