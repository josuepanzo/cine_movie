import 'package:flutter/material.dart';

class CustomTextRow extends StatelessWidget {
  final String label;
  final Function() onPressed;

  const CustomTextRow({super.key, required this.label, required this.onPressed,});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          TextButton(
            onPressed: onPressed,
            child: const Text("View All", style: TextStyle(color: Colors.white70,),),
          ),
        ],
      ),
    );
  }
}
