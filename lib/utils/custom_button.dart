import 'package:flutter/material.dart';

class CustomButtonScr extends StatelessWidget {
   const CustomButtonScr({required this.text,
   this.width=331,
   this.height=50,
   this.onPressed,
   
   super.key, });

  final String text;
  final double width;
  final double height;
  final Function() ? onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
              onPressed:onPressed,
              style: ElevatedButton.styleFrom(
                minimumSize: Size(width, height),
                backgroundColor: Color.fromARGB(194, 153, 88, 1),
                foregroundColor: Colors.white,
                
              ),
              child: Text(text,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
              ),
            ),
    );
  }
}