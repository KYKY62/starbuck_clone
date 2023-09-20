import 'package:flutter/material.dart';
import 'package:starbuck_clone/themes/themes.dart';

class PayTabBar extends StatelessWidget {
  const PayTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Your account balance",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Rp. 0",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text(
                  "Active",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.green,
                  ),
                ),
              ),
              Text(
                "TOP UP",
                style: TextStyle(
                  fontSize: 20,
                  color: mainColor,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15.0,
          ),
          const Center(
            child: Text(
              "As of 18/09/2023 15:27",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
          Image.asset(
            "assets/member_card.png",
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2.0,
                      color: Colors.green,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Center(
                      child: Text(
                    "Manage",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  )),
                ),
                Container(
                  width: 60,
                  height: 40,
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Center(
                    child: Text(
                      "Pay",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          const Text(
            "My Card",
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(
            height: 5,
          ),
          Column(
            children: [
              Container(
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.black45,
                    offset: Offset(0, 4),
                    blurRadius: 7,
                  ),
                ]),
                child: Image.asset(
                  "assets/member_card.png",
                  width: 90,
                  height: 60,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text("(6983)"),
            ],
          )
        ],
      ),
    );
  }
}
