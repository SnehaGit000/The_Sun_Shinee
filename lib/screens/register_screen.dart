import'package:flutter/material.dart';
//import 'package:the_sun_shine/screens/home_screen.dart';
import 'package:the_sun_shine/screens/login_screen.dart';
import 'package:the_sun_shine/screens/sign_up_screen.dart';
import 'package:the_sun_shine/utils/custom_button.dart';
import 'package:the_sun_shine/utils/navigations.dart';



class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        children: [
          Expanded( 
            child: Stack( //a Stack is a widget that lets you place widgets on top of each other—like layers.
              children: [
             // Background image//
               Positioned.fill( //Positioned.fill is a shorthand widget that stretches a child to fill its parent (inside a Stack).
                 child: Image.asset('images/online-fashion-shopping-collage.png',
                  width: 357.43,
                  height: 525,
                  // height: double.infinity,
                  // width: double.infinity,
                  fit:BoxFit.cover
                               ),
               ),

             // Overlay color
              Positioned.fill(
                child: Container(
                  color: Color.fromRGBO(194, 153, 88, 0.61,),
                ),
                ),

             // Centered login Button
              Positioned(
                 bottom: 40, // adjust vertical placement
                 left: 0,
                 right: 0,
                child: Column(children: [
                  SizedBox(
                    child: CustomButtonScr(text: 'Sign Up',
                    width: 336,
                    onPressed: (){
                      navigationPush(context, SignUp());
                    },
                  ),
                  ),
                  
                  Padding(padding: EdgeInsets.only(top:15),
                  child: ElevatedButton(
                    onPressed: (){
                      navigationPush(context, LoginScreen());
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(331, 50),
                      backgroundColor: Color.fromRGBO(34, 34, 34, 0.53), //rgba(34, 34, 34, 0.53)
                      foregroundColor: Colors.white,
              ),

                    child: Text('Login',
                      style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                  ),
                  )
                  ) , 
                  )

                ],
                )
                )
            ],
          ),
        )
      ],
      ),
    
    );
  }
}