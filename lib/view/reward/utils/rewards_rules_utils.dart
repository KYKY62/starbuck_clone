import 'package:flutter/material.dart';

class RewardsRuleUtils extends StatelessWidget {
  const RewardsRuleUtils(
      {super.key, required this.totalstar, required this.rewardsdescription});

  final String totalstar;
  final String rewardsdescription;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: const TextStyle(
          fontSize: 17,
        ),
        children: <TextSpan>[
          TextSpan(
            text: totalstar,
            style: const TextStyle(
              color: Colors.black, // Warna merah
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: rewardsdescription,
            style: const TextStyle(
              color: Colors.black, // Warna merah
            ),
          ),
        ],
      ),
    );
  }
}
