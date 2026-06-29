import 'package:flutter/material.dart';

navigationPush(BuildContext context, Widget screen){
  Navigator.push(
  context,
MaterialPageRoute(builder: (context) => screen),
                            
                           );
}

navigationPushReplacement(BuildContext context, Widget screen){
  Navigator.pushReplacement(
  context,
MaterialPageRoute(builder: (context) => screen),
                            
                           );
}

navigationPop(BuildContext context, Widget screen){
  Navigator.pop(
  context,
MaterialPageRoute(builder: (context) => screen),
                            
                           );
}