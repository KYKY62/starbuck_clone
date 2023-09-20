import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starbuck_clone/controller/home_controller.dart';
import 'package:starbuck_clone/themes/themes.dart';
import 'package:starbuck_clone/view/home/utils/drawer_utils.dart';
import 'package:starbuck_clone/view/menu/menu_page.dart';
import 'package:starbuck_clone/view/pay/pay_page.dart';
import 'package:starbuck_clone/view/reward/reward_page.dart';
import 'package:starbuck_clone/view/store/store_page.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final homeC = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    Widget topHeader() {
      return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Builder(
              builder: (context) {
                return GestureDetector(
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                  },
                  child: const Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 24.0,
                  ),
                );
              },
            ),
            Row(
              children: [
                const CircleAvatar(
                  radius: 35,
                  backgroundImage: NetworkImage(
                    "https://i.ibb.co/PGv8ZzG/me.jpg",
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Good Afternoon,",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    FutureBuilder(
                      future: FirebaseFirestore.instance
                          .collection('users')
                          .doc(FirebaseAuth.instance.currentUser?.uid)
                          .get(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const Text(
                            "User",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          );
                        } else {
                          final data = snapshot.data!.data();
                          final namaPengguna = data!['firstname'];

                          return Text(
                            namaPengguna,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          );
                        }
                      },
                    )
                  ],
                ),
              ],
            ),
            GestureDetector(
              onTap: () async {
                await FirebaseAuth.instance.signOut();
                Get.back();
                Get.back();
              },
              child: const Icon(
                Icons.logout,
                color: Colors.white,
                size: 24.0,
              ),
            ),
          ],
        ),
      );
    }

    Widget cardRewards() {
      return Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: 180,
          decoration: BoxDecoration(
            color: celadonColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "Starbuck Rewards",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 20.0),
                              child: Text(
                                "10 /",
                                style: TextStyle(
                                  fontSize: 24.0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text(
                                "100",
                                style: TextStyle(
                                  color: secondaryColor,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            const SizedBox(width: 5),
                            Icon(
                              Icons.star,
                              color: mainColor,
                              size: 14.0,
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: StepProgressIndicator(
                            totalSteps: 100,
                            currentStep: 10,
                            size: 10,
                            padding: 0,
                            selectedColor: Colors.green,
                            unselectedColor: secondaryColor,
                            roundedEdges: const Radius.circular(10),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "90 Starts For Next Level",
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  Row(
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.star,
                            color: mainColor,
                            size: 52.0,
                          ),
                          const Text("Rewards"),
                        ],
                      ),
                      const SizedBox(width: 15),
                      const Text("10 Stars"),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }

    Widget caroselBanner() {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            CarouselSlider.builder(
              carouselController: homeC.carouselController,
              itemCount: homeC.imgList.length,
              itemBuilder: (context, index, realIndex) {
                return Image.asset(
                  homeC.imgList[index],
                  fit: BoxFit.fill,
                );
              },
              options: CarouselOptions(
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) {
                  homeC.currentSlider.value = index;
                },
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: homeC.imgList
                  .asMap()
                  .entries
                  .map(
                    (e) => GestureDetector(
                      onTap: () =>
                          homeC.carouselController.animateToPage(e.key),
                      child: Obx(
                        () => Container(
                          width: homeC.currentSlider.value == e.key ? 42.0 : 12,
                          height: 12.0,
                          margin: const EdgeInsets.symmetric(
                            vertical: 8.0,
                            horizontal: 4.0,
                          ),
                          decoration: BoxDecoration(
                            // shape: BoxShape.circle,
                            borderRadius: BorderRadius.circular(16),
                            color:
                                (Theme.of(context).brightness == Brightness.dark
                                        ? Colors.white
                                        : Colors.black)
                                    .withOpacity(
                              homeC.currentSlider.value == e.key ? 0.9 : 0.4,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      );
    }

    Widget cardLastOffer() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Latest Offers",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20, // Menambahkan garis bawah
                    // Ketebalan garis bawah
                  ),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                    decoration:
                        TextDecoration.underline, // Menambahkan garis bawah
                    decorationColor: Colors.grey, // Warna garis bawah
                    decorationThickness: 2.0, // Ketebalan garis bawah
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Scoops Of Delight",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        const SizedBox(
                          child: Text(
                            "Have you tried one of latest ice cream series menu #DarkbrownisColdBrew ",
                            maxLines: 2,
                            style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          width: 120,
                          height: 30,
                          decoration: BoxDecoration(
                              color: secondaryColor,
                              borderRadius: BorderRadius.circular(32),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade300,
                                  blurRadius: 0.7,
                                  offset: const Offset(2, 7),
                                )
                              ]),
                          child: const Center(
                            child: Text(
                              "View Details",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 30)
                      ],
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'assets/banner.png',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    }

    List<Widget> widget = [
      SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 180,
                decoration: const BoxDecoration(
                  color: Color(0xff2C141C),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
              ),
            ),
            ListView(
              children: [
                topHeader(),
                cardRewards(),
                caroselBanner(),
                cardLastOffer(),
              ],
            ),
          ],
        ),
      ),
      PayPage(),
      const RewardPage(),
      const MenuPage(),
      const StorePage(),
    ];

    return Scaffold(
      drawer: const SafeArea(
          child: DrawerUtils(
        nama: "Rizk",
        email: "Rizk@",
      )),
      bottomNavigationBar: SafeArea(
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              decoration: BoxDecoration(
                color: mainColor,
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
                        Icons.home,
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
                        Icons.payment,
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
                        Icons.menu_book_rounded,
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
                        Icons.store,
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
                        Icons.star,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: celadonColor,
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
      body: Obx(() => widget[homeC.currentTab.value]),
    );
  }
}
