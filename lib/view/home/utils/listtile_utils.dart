import 'package:flutter/material.dart';

class ListtileUtils extends StatelessWidget {
  const ListtileUtils({
    super.key,
    required this.icon,
    required this.title,
    required this.ontap,
  });

  final IconData icon;
  final String title;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      iconColor: Colors.white,
      tileColor: Colors.white38,
      titleTextStyle: const TextStyle(
        color: Colors.white,
      ),
      leading: Icon(
        icon,
      ),
      title: Text(title),
      onTap: ontap,
    );
  }
}
