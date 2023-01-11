import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0, bottom: 15),
      child: Container(
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: const Color(0xFF555774),
        ),
        child: TextFormField(
          cursorColor: Colors.white70,
          decoration: const InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search, color: Colors.white54),
            hintText: 'Search...',
            hintStyle: TextStyle(color: Colors.white54),
          ),
          style: const TextStyle(color: Colors.white60),
        ),
      ),
    );
  }
}
