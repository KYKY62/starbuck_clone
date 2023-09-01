import 'package:flutter/material.dart';

class PayPage extends StatelessWidget {
  const PayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SafeArea(
        child: Drawer(
          child: DrawerHeader(
            child: Text("text"),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Builder(builder: (context) {
              return GestureDetector(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: const Icon(
                  Icons.menu,
                  size: 24.0,
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
