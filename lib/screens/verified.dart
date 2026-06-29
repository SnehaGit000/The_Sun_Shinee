import'package:flutter/material.dart';

class Verified extends StatelessWidget {
  const Verified({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
                child: Image.asset('images/Group.png'),
              ),
              Padding(
            padding:EdgeInsets.only(top:20, bottom: 5),
            child: //CustomText(text: 'Reset Password'),
            Text('Verified',
            style: TextStyle(
              fontFamily: 'Roboto' ,
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(194, 153, 88, 1), 
            ),
            ),
            ),
            SizedBox(),
            Text('Your account has been',
            style: TextStyle(
              fontFamily: 'Roboto' ,
              fontSize: 18,
              fontWeight: FontWeight.w400,
              
            ),
            ),
            Text('verified succesfully !',
            style: TextStyle(
              fontFamily: 'Roboto' ,
              fontSize: 18,
              fontWeight: FontWeight.w400,
              
            ),
            ),
          ],
        ),
      )
    );
  }
}