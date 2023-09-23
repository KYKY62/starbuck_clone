import 'package:flutter/material.dart';
import 'package:starbuck_clone/themes/themes.dart';
import 'package:starbuck_clone/view/reward/utils/gold_level.dart';
import 'package:starbuck_clone/view/reward/utils/green_level.dart';

class BenefitRewards extends StatelessWidget {
  const BenefitRewards({
    super.key,
    required this.ontap,
  });

  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            elevation: 1,
            title: Row(
              children: [
                GestureDetector(
                  onTap: ontap,
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                ),
                const Text(
                  "Rewards Benefit",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                )
              ],
            ),
            actions: const [],
            bottom: TabBar(
              indicatorColor: secondaryColor,
              tabs: [
                Tab(
                  child: Text(
                    "Green Level",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                      color: secondaryColor,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Gold Level",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                      color: secondaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              GreenLevel(),
              GoldLevel(),
            ],
          )),
    );
  }
}
