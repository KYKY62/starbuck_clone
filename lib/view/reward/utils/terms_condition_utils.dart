import 'package:flutter/material.dart';

class TermConditionUtils extends StatelessWidget {
  const TermConditionUtils({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "- Star & Rewards may appear up to 1 x 24 hours",
            style: TextStyle(
              fontSize: 17.0,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            "- Each Reward is valid for 1 month (x 24 hours since issued)",
            style: TextStyle(
              fontSize: 17.0,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            "- Birthday treats are not valid for inactive account/Starbucks Card with no transaction >1 year",
            style: TextStyle(
              fontSize: 17.0,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            "- Birthday treats are valid for accounts registered a month before the birth date.",
            style: TextStyle(
              fontSize: 17.0,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            "- Other T&C apply",
            style: TextStyle(
              fontSize: 17.0,
            ),
          ),
        ],
      ),
    );
  }
}
