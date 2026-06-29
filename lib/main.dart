import'package:flutter/material.dart';
import 'package:the_sun_shine/screens/forgot_password.dart';
import 'package:the_sun_shine/screens/home.dart';
import 'package:the_sun_shine/screens/login_screen.dart';
import 'package:the_sun_shine/screens/otp_verification.dart';
import 'package:the_sun_shine/screens/profilescreen.dart';
import 'package:the_sun_shine/screens/reset_password.dart';
import 'package:the_sun_shine/screens/splash_screen.dart';
import 'package:the_sun_shine/screens/verified.dart';
import 'package:the_sun_shine/widgets/custom_bottom_navigationbar.dart';

//import 'package:flutter/widgets.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: SplashScreen(),
      //home: OtpVerification(),
      //home: LoginScreen(),
      //home: ForgotPasswordScreen(),
      //home: ResetPassword()
      home: HomeScreen()
      //home: Verified(),
      //home: CustomBottomNavigationBar()
      //home: Profilescreen(),
    );
  }
}
