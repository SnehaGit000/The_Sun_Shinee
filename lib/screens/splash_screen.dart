import 'dart:async';

import'package:flutter/material.dart';
import 'package:the_sun_shine/screens/register_screen.dart';
import 'package:the_sun_shine/utils/navigations.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen>createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

@override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      // Navigator.pushReplacement(
      //   context,
      //   MaterialPageRoute(builder: (context) => RegisterScreen()),
      // );
      navigationPushReplacement(context, RegisterScreen());
    });
  }

  @override
  Widget build(BuildContext context) {

    // final screenSize = MediaQuery.of(context).size;
    // final imageHeight = screenSize.height * 0.3; // 30% of screen height
    // final imageWidth = screenSize.width * 0.8;   // 80% of screen width
    
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color.fromARGB(255, 255, 255, 0),   
          Color.fromARGB(202, 161, 53, 1),    
          Color.fromARGB(142, 75, 5, 1),      
        ],
      ),
        ),
        child: Center(
          child:Image.asset(
            'images/Group_1499.png',
            //width: 120,
          )
      ),
         ),
    );
    
    
        
  }
}