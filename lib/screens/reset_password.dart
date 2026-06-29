import 'package:flutter/material.dart';
import 'package:the_sun_shine/screens/verified.dart';
import 'package:the_sun_shine/utils/custom_appbar.dart';
//import 'package:the_sun_shine/utils/custom_text.dart';
import 'package:the_sun_shine/utils/custom_text_field.dart';
import 'package:the_sun_shine/utils/custom_button.dart';
import 'package:the_sun_shine/utils/navigations.dart';



class ResetPassword extends StatefulWidget {
   ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  TextEditingController newpassword = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Center(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
              child: Image.asset('images/Group_1586.png'),
            ),
          Padding(
            padding:EdgeInsets.all(20),
            child: //CustomText(text: 'Reset Password'),
            Text('Reset Password',
            style: TextStyle(
              fontFamily: 'Roboto' ,
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(194, 153, 88, 1), 
            ),
            ),
            ),

            Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CustomTextField(
                    controller: newpassword,
                      labelText: 'New Password',
                      hintText: 'New Password',
                 ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0,),
                  child: CustomTextField(
                    controller: confirmpassword,
                    labelText: 'Confirm Password',
                    hintText: 'Confirm Password',
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 40),
                    child: CustomButtonScr(text: 'Submit',
                     height: 55,
                     width: 450,
                     onPressed: () {
                       navigationPushReplacement(context, Verified());
                     },
                     ),
                     )
        ],
       ),
      ),
    );
  }
}