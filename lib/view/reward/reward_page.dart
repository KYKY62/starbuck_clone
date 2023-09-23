import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starbuck_clone/controller/home_controller.dart';
import 'package:starbuck_clone/themes/themes.dart';
import 'package:starbuck_clone/utils/line_utils.dart';
import 'package:starbuck_clone/view/reward/benefit_reward.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

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
                      const SizedBox(height: 10),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          StepProgressIndicator(
                            totalSteps: 25,
                            currentStep: 10,
                            size: 32,
                            padding: 0,
                            selectedColor: secondaryColor,
                            unselectedColor: Colors.green.shade700,
                            roundedEdges: const Radius.circular(10),
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "10",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 130,
                              height: 35,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(16)),
                              child: const Center(
                                child: Text(
                                  "View History",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                const Text("15"),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow.shade800,
                                ),
                                const Text("to next reward"),
                              ],
                            ),
                          ],
                        ),
                      ),
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
