import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starbuck_clone/controller/home_controller.dart';
import 'package:starbuck_clone/themes/themes.dart';
import 'package:starbuck_clone/utils/line_utils.dart';
import 'package:starbuck_clone/view/reward/benefit_reward.dart';

class RewardPage extends StatelessWidget {
  RewardPage({super.key});

  final homeC = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => homeC.isRewardsPage.value
        ? Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.white,
              elevation: 1,
              title: Row(
                children: [
                  GestureDetector(
                    onTap: () => homeC.currentTab.value = 0,
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                  ),
                  const Text(
                    "Starbucks Reward",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            body: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Rewards Progress"),
                      const Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "10",
                                      style: TextStyle(
                                        fontSize: 40,
                                      ),
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.green,
                                    ),
                                  ],
                                ),
                                Text("Start balance"),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.green,
                                size: 50.0,
                              ),
                              Text("Rewards"),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      const LineUtils(),
                      const SizedBox(height: 10.0),
                      const Text("Membership Status"),
                      const SizedBox(height: 10.0),
                      Text(
                        "Green level",
                        style: TextStyle(
                          fontSize: 24,
                          color: secondaryColor,
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      const Text("290 Stars to Gold tier"),
                      const SizedBox(height: 3),
                      const Text("Member Since 22 May 2023"),
                      const SizedBox(height: 20.0),
                      const LineUtils(),
                      const SizedBox(height: 5.0),
                      InkWell(
                        onTap: () {
                          homeC.isRewardsPage.value = false;
                        },
                        child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "More about your reward benefits",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              Icon(
                                Icons.keyboard_arrow_right_sharp,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 5.0),
                      const LineUtils(),
                    ],
                  ),
                )
              ],
            ),
          )
        : BenefitRewards(
            ontap: () {
              homeC.isRewardsPage.value = true;
            },
          ));
  }
}
