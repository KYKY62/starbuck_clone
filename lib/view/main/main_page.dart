import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

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
            const Row(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: NetworkImage(
                    "https://i.ibb.co/PGv8ZzG/me.jpg",
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Good Afternoon,",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Rizky Akbar Siregar",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
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
            color: const Color(0xffeed793),
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
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20.0),
                              child: Text(
                                "10 /",
                                style: TextStyle(
                                  fontSize: 24.0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Text(
                                "100",
                                style: TextStyle(
                                  color: Color(0xff00653e),
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            Icon(
                              Icons.star,
                              color: Color(0xff044259),
                              size: 14.0,
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: StepProgressIndicator(
                            totalSteps: 100,
                            currentStep: 10,
                            size: 10,
                            padding: 0,
                            selectedColor: Colors.green,
                            unselectedColor: Color(0xff00653e),
                            roundedEdges: Radius.circular(10),
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
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
                  const Row(
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.star,
                            color: Color(0xff044229),
                            size: 52.0,
                          ),
                          Text("Rewards"),
                        ],
                      ),
                      SizedBox(width: 15),
                      Text("10 Stars"),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      drawer: Drawer(
        backgroundColor: const Color(0xff044229),
        child: ListView(
          children: const [
            DrawerHeader(
              child: Icon(Icons.abc),
            ),
          ],
        ),
      ),
      body: SafeArea(
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
