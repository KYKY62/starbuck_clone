import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starbuck_clone/controller/home_controller.dart';
import 'package:starbuck_clone/themes/themes.dart';
import 'package:starbuck_clone/view/pay/widget/add_tabbar.dart';
import 'package:starbuck_clone/view/pay/widget/pay_tabbar.dart';
import 'package:starbuck_clone/view/pay/widget/virtual_account_tabbar.dart';

class PayPage extends StatelessWidget {
  PayPage({super.key});

  // final payC = Get.put(PayController());
  final homeC = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    List<Widget> tabBarMenu = [
      const PayTabBar(),
      AddTabBar(),
      const VirtualAccountTabBar(),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                homeC.currentTab.value = 0;
              },
              child: const Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.black,
                size: 24.0,
              ),
            ),
            const SizedBox(
              width: 15.0,
            ),
            const Text(
              "Starbucks Card",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      homeC.currentPayTab.value = 0;
                    },
                    child: SizedBox(
                      width: 50,
                      child: Column(
                        children: [
                          const Text(
                            "PAY",
                            style: TextStyle(
                              color: Colors.green,
                            ),
                          ),
                          Obx(() => Container(
                                margin: const EdgeInsets.only(top: 20),
                                height: 1,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  color: homeC.currentPayTab.value == 0
                                      ? mainColor
                                      : Colors.transparent,
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      homeC.currentPayTab.value = 1;
                    },
                    child: SizedBox(
                      width: 50,
                      child: Column(
                        children: [
                          const Text(
                            "ADD",
                            style: TextStyle(
                              color: Colors.green,
                            ),
                          ),
                          Obx(() => Container(
                                margin: const EdgeInsets.only(top: 20),
                                height: 1,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  color: homeC.currentPayTab.value == 1
                                      ? mainColor
                                      : Colors.transparent,
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      homeC.currentPayTab.value = 2;
                    },
                    child: SizedBox(
                      width: 150,
                      child: Column(
                        children: [
                          const Text(
                            "VIRTUAL ACCOUNT",
                            style: TextStyle(
                              color: Colors.green,
                            ),
                          ),
                          Obx(() => Container(
                                margin: const EdgeInsets.only(top: 20),
                                height: 1,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  color: homeC.currentPayTab.value == 2
                                      ? mainColor
                                      : Colors.transparent,
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Expanded(
              child: ListView(
                children: [
                  Obx(() => tabBarMenu[homeC.currentPayTab.value]),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
