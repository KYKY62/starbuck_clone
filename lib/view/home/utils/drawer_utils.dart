// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:starbuck_clone/view/home/utils/listtile_utils.dart';
import 'package:starbuck_clone/view/home/utils/sublisttile_utils.dart';

class DrawerUtils extends StatelessWidget {
  const DrawerUtils({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xff044229),
      child: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  width: double.infinity,
                  height: 170,
                  decoration: const BoxDecoration(
                    color: Color(0xffeed792),
                  ),
                  child: FutureBuilder(
                    future: FirebaseFirestore.instance
                        .collection('users')
                        .doc(FirebaseAuth.instance.currentUser?.uid)
                        .get(),
                    builder: (context, snapshot) {
                      final data = snapshot.data?.data();
                      final namaPengguna = data?['firstname'];
                      final emailPengguna = data?['email'];
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            radius: 35,
                            backgroundImage: NetworkImage(
                              "https://i.ibb.co/PGv8ZzG/me.jpg",
                            ),
                          ),
                          const SizedBox(height: 10.0),
                          Text(
                            !snapshot.hasData ? "Users" : namaPengguna,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 3),
                          Text(!snapshot.hasData ? "Users" : emailPengguna),
                        ],
                      );
                    },
                  ),
                ),
              ),
              ListtileUtils(
                icon: Icons.home,
                title: 'Cards Transaction History',
                ontap: () {},
              ),
              const SizedBox(
                height: 10.0,
              ),
              ListtileUtils(
                icon: Icons.star,
                title: 'Rewards',
                ontap: () {},
              ),
              const SizedBox(
                height: 10.0,
              ),
              ListtileUtils(
                icon: Icons.discount,
                title: 'E-Code',
                ontap: () {},
              ),
              const SizedBox(
                height: 10.0,
              ),
              ExpansionTile(
                collapsedBackgroundColor: Colors.white38,
                collapsedIconColor: Colors.white,
                collapsedTextColor: Colors.white,
                iconColor: Colors.white,
                textColor: Colors.white,
                leading: const Icon(Icons.person),
                title: const Text('Personal'),
                children: [
                  SubListTileUtils(
                    ontap: () {},
                    title: "Change Detail",
                  ),
                  const SizedBox(height: 10.0),
                  SubListTileUtils(
                    ontap: () {},
                    title: "Change Password",
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              ExpansionTile(
                collapsedBackgroundColor: Colors.white38,
                collapsedIconColor: Colors.white,
                collapsedTextColor: Colors.white,
                iconColor: Colors.white,
                textColor: Colors.white,
                leading: const Icon(Icons.settings),
                title: const Text('Settings'),
                children: [
                  SubListTileUtils(
                    ontap: () {},
                    title: "FAQ",
                  ),
                  const SizedBox(height: 10.0),
                  SubListTileUtils(
                    ontap: () {},
                    title: "Privacy Police",
                  ),
                  const SizedBox(height: 10.0),
                  SubListTileUtils(
                    ontap: () {},
                    title: "Terms & Condition",
                  ),
                  const SizedBox(height: 10.0),
                  SubListTileUtils(
                    ontap: () {},
                    title: "Contact Us",
                  ),
                  const SizedBox(height: 10.0),
                  SubListTileUtils(
                    ontap: () {},
                    title: "Tutorial",
                  ),
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
