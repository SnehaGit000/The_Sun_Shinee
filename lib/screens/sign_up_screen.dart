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
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';



class SignUp extends StatefulWidget {
   SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  TextEditingController name=TextEditingController();
  TextEditingController email=TextEditingController();
  TextEditingController number=TextEditingController();
  TextEditingController password=TextEditingController();
  TextEditingController confirmPassword=TextEditingController();

  bool isLoading = false;

  Future<void> createAccount() async {
    final userName = name.text.trim();
    final userEmail = email.text.trim();
    final userPassword = password.text;
    final confirm = confirmPassword.text;

    if (
      userName.isEmpty ||
      userEmail.isEmpty ||
      userPassword.isEmpty ||
      confirm.isEmpty
    ){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please fill in all required fields'))
      );
      return;
    }
    if (userPassword != confirm){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Passwords do not match'))
      );
      return;
    }

     if (userPassword.length < 6) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Password must be at least 6 characters'),
        ),
      );
      return;
    }

    setState(() => isLoading = true);

    // try{
    //   final credential = await FirebaseAuth.instance
    // } on {

    // }
  }

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