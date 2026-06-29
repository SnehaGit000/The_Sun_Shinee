import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({required this.iconPath});
  final String iconPath;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 150,
      decoration: BoxDecoration(
        color: Color.fromRGBO(228, 213, 255, 0.5),
        border: Border.all(width: 1,
        color: Color.fromRGBO(228, 213, 255, 0.5),
        ),
        borderRadius: BorderRadius.circular(12),
        boxShadow:[
         //BoxShadow(color: Colors.black,
         //blurRadius: 5,
         //spreadRadius: 1)
        ]
      ),
      child: Center(
        child: Image.asset(iconPath,height: 24,width: 24,),
      ),
    );
  }
}