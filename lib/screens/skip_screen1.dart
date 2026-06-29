import'package:flutter/material.dart';
import'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:the_sun_shine/utils/custom_button.dart';
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
      home: SkipScreen(),
    );
  }
}


class SkipScreen extends StatefulWidget {
   SkipScreen({super.key});

  @override
  State<SkipScreen> createState() => _SkipScreenState();
}

class _SkipScreenState extends State<SkipScreen> {

final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('images/Group_1546.png'),
            ),
            SizedBox(),
            Text('Online Shopping',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(194, 153, 88, 1), 
            ),
            ),
            Padding(padding: EdgeInsets.only(top: 10,left: 50,right: 50),
            child: Text('Lorem ipsum dolor sit amet consectetur Vitae risus nec bibendum eget placerat Ut etiam pellentesque aecr nisi vitae ut Diam rutrum luctus amet potenti',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFFB4B4B7),
            ),
            ),
            ),

//sliding dots using package 'smooth_page_indicator' -->
            Padding(padding: EdgeInsets.all(30.0),
            child: SmoothPageIndicator(
              controller: _controller, 
              count: 3,
              effect: WormEffect(
                dotHeight: 10,
                dotWidth: 10,
                dotColor: Color.fromARGB(255, 213, 147, 1),
                activeDotColor:Color(0xFFC29958) ,
               ),
              ),
            ),
            Padding(padding: EdgeInsets.all(8.0),
            child: CustomButtonScr(text: 'Next',width: 331,height: 50,),
            ),
          ],
        ),
      ),
    );
  }
}