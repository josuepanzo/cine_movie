import 'package:flutter/material.dart';

class CustomIconCard extends StatelessWidget {
  final IconData iconData;
  final String label;
  const CustomIconCard({super.key, required this.iconData, required this.label,});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 28, bottom: 28,),
      child: Card(
        elevation: 8,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Icon(iconData, color: Colors.indigo, size: 50),
              const SizedBox(height: 18),
              Text(
                label,
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
