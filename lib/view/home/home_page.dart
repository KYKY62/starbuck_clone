import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starbuck_clone/controller/home_controller.dart';
import 'package:starbuck_clone/view/main/main_page.dart';
import 'package:starbuck_clone/view/pay/pay_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final homeC = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    // Widget currentScreen = const MainPage();

    Widget bottomNav() {
      switch (homeC.currentTab.value) {
        case 0:
          return const PayPage();
        case 1:
          return const MainPage();
        case 2:
          return const MainPage();
        case 3:
          return const MainPage();
        case 4:
          return const MainPage();
        default:
          return const PayPage();
      }
    }

    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.red,
        child: ListView(
          children: const [
            DrawerHeader(
              child: Icon(Icons.abc),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              decoration: BoxDecoration(
                color: const Color(0xff044229),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      homeC.currentTab.value = 0;
                    },
                    child: const SizedBox(
                      width: 36,
                      height: 36,
                      child: Icon(
                        Icons.abc,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      homeC.currentTab.value = 1;
                    },
                    child: const SizedBox(
                      width: 36,
                      height: 36,
                      child: Icon(
                        Icons.abc,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 55,
                  ),
                  GestureDetector(
                    onTap: () {
                      homeC.currentTab.value = 3;
                    },
                    child: const SizedBox(
                      width: 36,
                      height: 36,
                      child: Icon(
                        Icons.abc,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      homeC.currentTab.value = 4;
                    },
                    child: const SizedBox(
                      width: 36,
                      height: 36,
                      child: Icon(
                        Icons.abc,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 155,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      homeC.currentTab.value = 2;
                    },
                    child: Container(
                      width: 56,
                      height: 56,
                      decoration: const BoxDecoration(
                        color: Color(0xff2b141c),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.support_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffeed792),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Text("Rewards"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Obx(() => bottomNav()),
    );
  }
}
