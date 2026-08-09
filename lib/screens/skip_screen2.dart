import 'package:flutter/material.dart';
import 'package:the_sun_shine/utils/custom_button.dart';
import 'package:the_sun_shine/utils/slidedot.dart';
import 'package:the_sun_shine/screens/login_screen.dart';
import 'package:the_sun_shine/utils/navigations.dart';

class Skip2Screen extends StatefulWidget {
  Skip2Screen({super.key});

  @override
  State<Skip2Screen> createState() => _Skip2ScreenState();
}

class _Skip2ScreenState extends State<Skip2Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('images/Group_1547.png'),
            ),
            SizedBox(),
            Text(
              'Hurry Up !',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(194, 153, 88, 1),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 50, right: 50),
              child: Text(
                'Lorem ipsum dolor sit amet consectetur Vitae risus nec bibendum eget placerat Ut etiam pellentesque aecr nisi vitae ut Diam rutrum luctus amet potenti',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFB4B4B7),
                ),
              ),
            ),

//sliding dots using package 'smooth_page_indicator' -->
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Slidedot(
                count: 4,
              ),
            ),
            Padding(
                padding: EdgeInsets.all(8.0),
                child: CustomButtonScr(
                  text: 'Get Started',
                  width: 331,
                  height: 50,
                   onPressed: () {
                    navigationPushReplacement(context, const LoginScreen());
                  },
                )
              ),
          ],
        ),
      ),
    );
  }
}
