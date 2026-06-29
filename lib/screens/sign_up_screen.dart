import'package:flutter/material.dart';
import 'package:the_sun_shine/screens/home.dart';
import 'package:the_sun_shine/utils/custom_appbar.dart';
import 'package:the_sun_shine/utils/custom_continuewith_divider.dart';
import 'package:the_sun_shine/utils/navigations.dart';
import 'package:the_sun_shine/utils/welcome_text.dart';
import 'package:the_sun_shine/utils/custom_button.dart';
import 'package:the_sun_shine/utils/custom_text_field.dart';
import 'package:the_sun_shine/utils/socialbutton.dart';
import 'package:the_sun_shine/screens/register_screen.dart';


class SignUp extends StatefulWidget {
   SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  TextEditingController name=TextEditingController();
  TextEditingController number=TextEditingController();
  TextEditingController password=TextEditingController();
  TextEditingController confirmpassword=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: CustomAppBar(onPressed: () => navigationPop(context, RegisterScreen()),),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 12.0,right: 12.0),
            child: Column(
                  children: [
                    WelcomeText(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomTextField(
                        controller: name,
                          labelText: 'Enter Name',
                          hintText: 'Enter your Name',
                     ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomTextField(
                        controller: number,
                          labelText: 'Enter Number',
                          hintText: 'Enter Number',
                     ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomTextField(
                        controller: password,
                          labelText: 'Enter Password',
                          hintText: 'Enter Password',
                          suffixIcon: Icon(Icons.visibility_outlined),
                     ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: CustomTextField(
                    //     controller: number,
                    //       labelText: 'Confirm Password',
                    //       hintText: 'Confirm Password',
                    //  ),
                    // ),
                    Padding(padding: EdgeInsets.only(top: 40),
                        child: CustomButtonScr(text: 'Sing Up',
                        onPressed: () {
                          navigationPushReplacement(context, HomeScreen());
                        }, 
                        width: 360, 
                        height: 55),
              ),
              SizedBox(height: 30),
              ContinueWith(),
              SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialButton(
                  iconPath:'images/google.jpeg'),
            
            SizedBox(width: 20),
                SocialButton(
                  iconPath: 'images/facebook1.jpeg')
            ],
            )
             ]
            ),
          ),
        )
      ),
    );
  }
}