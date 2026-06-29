import'package:flutter/material.dart';
import 'package:the_sun_shine/utils/custom_button.dart';
import 'package:the_sun_shine/utils/slidedot.dart';
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
            Text('Hurry Up !',
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
            child: Slidedot(count: 4,),
            ),
            Padding(padding: EdgeInsets.all(8.0),
            child: CustomButtonScr(text: 'Get Started',width: 331,height: 50,)
            ),
          ],
        ),
      ),
    );
  }
}