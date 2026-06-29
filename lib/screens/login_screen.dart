import'package:flutter/material.dart';
import 'package:the_sun_shine/screens/home.dart';
import 'package:the_sun_shine/screens/register_screen.dart';
import 'package:the_sun_shine/utils/custom_button.dart';
import 'package:the_sun_shine/utils/custom_continuewith_divider.dart';
import 'package:the_sun_shine/utils/custom_text_field.dart';
import 'package:the_sun_shine/utils/navigations.dart';
import 'package:the_sun_shine/utils/socialbutton.dart';
import 'package:the_sun_shine/utils/welcome_text.dart';
import 'package:the_sun_shine/utils/custom_appbar.dart';
import 'package:the_sun_shine/screens/forgot_password.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController number= TextEditingController();
  TextEditingController password= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: CustomAppBar(
          onPressed: () => navigationPop(context, RegisterScreen()),
        ),
          body: Center(
            child: Column(
              children: [
                WelcomeText(),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CustomTextField(
                    controller: number,
                      labelText: 'Enter Number',
                      hintText: 'Enter Number',
                 ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: CustomTextField(
                    controller: password,
                    labelText: 'Password',
                    hintText: 'Enter Password',
                  ),
                ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell( //inkwell converts text to a button
                        onTap:(){
                         print('forget password button pressed');
                          //  Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => ForgotPasswordScreen()),
                            
                          //  );
                          navigationPush(context, ForgotPasswordScreen());
                        } ,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            'Forget Password',
                            style: TextStyle(
                              color: Color.fromRGBO(117, 117, 117, 1.0),
                              fontFamily: 'Roboto',
                              fontWeight:FontWeight.w400,
                              fontSize: 14,
                          ),
                          ),
                        ),
                        ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 40),
                    child: CustomButtonScr(text: 'Login',
                     height: 55,
                     onPressed: () {
                       navigationPushReplacement(context, HomeScreen());
                     },),
                     
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
                ],
            ),
          ),
          
        ),
    );
  }
}