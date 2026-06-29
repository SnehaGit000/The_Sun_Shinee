import'package:flutter/material.dart';
import'package:smooth_page_indicator/smooth_page_indicator.dart';

class Slidedot extends StatefulWidget {
   Slidedot({required this.count,super.key});

   final int count;

  @override
  State<Slidedot> createState() => _Slidedot();
}

class _Slidedot extends State<Slidedot> {
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SmoothPageIndicator(
              controller: _controller, 
              count: widget.count, //count is actually a property of your Slidedot widget — so you need to access it with widget.count.
              effect: WormEffect(
                dotHeight: 10,
                dotWidth: 10,
                dotColor: Color.fromARGB(255, 213, 147, 1),
                activeDotColor:Color(0xFFC29958) ,
               ),
              ),
    );
  }
}