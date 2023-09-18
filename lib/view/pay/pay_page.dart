import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starbuck_clone/controller/pay_controller.dart';
import 'package:starbuck_clone/view/pay/widget/pay_tabbar.dart';

class PayPage extends StatelessWidget {
  PayPage({super.key});

  final payC = Get.put(PayController());

  @override
  Widget build(BuildContext context) {
    List<Widget> tabBarMenu = [
      const PayTabBar(),
      const Text("ADD"),
      const Text("VIRTUAL ACCOUNT"),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Row(
          children: [
            Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.black,
              size: 24.0,
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
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
                      payC.currentTab.value = 0;
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
                                  color: payC.currentTab.value == 0
                                      ? const Color(0xff044229)
                                      : Colors.transparent,
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      payC.currentTab.value = 1;
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
                                  color: payC.currentTab.value == 1
                                      ? const Color(0xff044229)
                                      : Colors.transparent,
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      payC.currentTab.value = 2;
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
                                  color: payC.currentTab.value == 2
                                      ? const Color(0xff044229)
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
                  Obx(() => tabBarMenu[payC.currentTab.value]),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
