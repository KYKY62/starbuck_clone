import 'package:flutter/material.dart';

class SubListTileUtils extends StatelessWidget {
  const SubListTileUtils({
    super.key,
    required this.ontap,
    required this.title,
  });

  final VoidCallback ontap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: ontap,
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 4),
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width * 0.6,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
