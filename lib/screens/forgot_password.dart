import 'package:flutter/material.dart';
import 'package:the_sun_shine/screens/login_screen.dart';
//import 'package:the_sun_shine/screens/register_screen.dart';
import 'package:the_sun_shine/utils/custom_appbar.dart';
import 'package:the_sun_shine/utils/custom_button.dart';
//import 'package:the_sun_shine/utils/custom_text.dart';
import 'package:the_sun_shine/utils/custom_text_field.dart';
import 'package:the_sun_shine/utils/navigations.dart';
import 'package:the_sun_shine/screens/otp_verification.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  TextEditingController number = TextEditingController();

final GlobalKey<FormState> formKey = GlobalKey<FormState>();// important , use evry time when working with textFormField

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
        //onPressed: () => navigationPop(context, RegisterScreen()),  
        ),
        body: Form(key: formKey,
          child: Center(
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 50, right: 50, bottom: 15),
                  child: Image.asset('images/Group_1578.png'),
                ),
          
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Forgot Password ?',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(194, 153, 88, 1),
                    ),
                  ),
                ),
                //CustomText(text: 'Forgot Password')
                SizedBox(),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CustomTextField(
                      controller: number,
                      hintText: 'Number',
                      labelText: 'Enter your Number',
                      validator: validateMobile,
                      ),
                ),
                SizedBox(),
                CustomButtonScr(text: 'Send', width: 380, height: 55,
                onPressed: () {

                  if (formKey.currentState!.validate()) {
      // If the form is valid, display a snackbar. In the real world,
      // you'd often call a server or save the information in a database.
      //ScaffoldMessenger.of(context).showSnackBar(
      //  const SnackBar(content: Text('Processing Data')),
      //);
              navigationPush(context, OtpVerification());
    }

                  //navigationPush(context, OtpVerification());
                },
                ),
          
                Padding(
                  padding: EdgeInsets.all(20),
                  child: ElevatedButton(onPressed: (){
                    navigationPushReplacement(context, LoginScreen());
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(460, 55),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: BorderSide(color: Color.fromARGB(194, 153, 88, 1),),
                    ),
                    foregroundColor: Color.fromARGB(194, 153, 88, 1),
                    backgroundColor: Colors.white,
                  ), 
                  child: Text('Back to Login')
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
