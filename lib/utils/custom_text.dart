import'package:flutter/material.dart';
class CustomText extends StatelessWidget {
  final String text;
  const CustomText({required this.text ,super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(text,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(194, 153, 88, 1), 
            ),
            ),
    );
  }
}