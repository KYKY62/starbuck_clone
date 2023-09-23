import 'package:flutter/material.dart';
import 'package:starbuck_clone/themes/themes.dart';
import 'package:starbuck_clone/view/reward/utils/rewards_rules_utils.dart';
import 'package:starbuck_clone/view/reward/utils/terms_condition_utils.dart';

class GreenLevel extends StatelessWidget {
  const GreenLevel({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Icon(
                  Icons.star,
                  color: secondaryColor,
                  size: 150,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              const Text(
                "Collect 1 Star every Rp.5.000,- spent using your registered Starbucks Card balance as means of payment.",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              const SizedBox(height: 20.0),
              const Text(
                "Collect 1 Star every Rp.10.000,- spent using any other means of payment to your Starbucks Reward account.",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              const SizedBox(height: 20.0),
              const Text(
                "Rewards:",
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20.0),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    RewardsRuleUtils(
                      totalstar: "- 25 Stars",
                      rewardsdescription:
                          "= Free add-on (Espresso shot/Syrup/Sauce/Choco chips/Dairy Milk)",
                    ),
                    SizedBox(height: 50.0),
                    RewardsRuleUtils(
                      totalstar: "- 50 Stars",
                      rewardsdescription:
                          "= Free Tall Brewed Coffe/Tea/Americano or Butter Croissant",
                    ),
                    SizedBox(height: 50.0),
                    RewardsRuleUtils(
                      totalstar: "- 100 Stars",
                      rewardsdescription:
                          "= Free Any Handcrafted Beverage/Food/VIA coffe (Tall size only for Green Members,Up to Grande for Gold)",
                    ),
                    SizedBox(height: 50.0),
                  ],
                ),
              ),
              const Text(
                "Terms & Conditions apply.",
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20.0),
              const TermConditionUtils(),
              const SizedBox(height: 20.0),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  "See all Starbucks Rewards details here",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 17.0,
                    decoration:
                        TextDecoration.underline, // Menambahkan garis bawah
                    decorationColor: Colors.blue, // Warna garis bawah
                    decorationThickness: 2.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
