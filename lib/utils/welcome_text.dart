import'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(0),
          child: Text(
            'Welcome',
                        style: TextStyle(
                          color: Color.fromARGB(194, 153, 88, 1),
                          fontSize: 28,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600
                        ),
                      
          ),
        ),
        Padding(padding: EdgeInsets.only(bottom: 20),
                child: Text('Login to Your Account',
                style: TextStyle(
                  //fontFamily: 'Roboto_Condensed-Regular',
                    fontSize: 28,
                    fontWeight: FontWeight.w300
                  ),),
                ),
      ],
    );
  }
}