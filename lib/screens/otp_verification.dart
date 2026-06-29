import 'package:flutter/material.dart';
import 'package:the_sun_shine/screens/forgot_password.dart';
//import 'package:the_sun_shine/utils/custom_appbar.dart';
import 'package:the_sun_shine/utils/custom_button.dart';
import 'package:the_sun_shine/utils/navigations.dart';
//import 'package:the_sun_shine/utils/custom_text.dart';

class OtpVerification extends StatelessWidget {
   OtpVerification({super.key});

  final TextEditingController otp1 = TextEditingController();
  final TextEditingController otp2 = TextEditingController();
  final TextEditingController otp3 = TextEditingController();
  final TextEditingController otp4 = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: CustomAppBar(),
      body: Center(
        child: Column(children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('images/Group_1580.jpg'),
            ),
          Padding(
              padding: const EdgeInsets.all(20.0),
              child: //CustomText(text: 'OTP Verification'),
              Text('OTP Verification',
            style: TextStyle(
              fontFamily: 'Roboto' ,
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(194, 153, 88, 1), 
            ),
            ),
            ),
//OTP fields
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[otp1, otp2, otp3, otp4].map((controller){
                  return SizedBox(
                    width: 60,
                    child: TextField(
                      controller: controller,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      maxLength: 1,//It shows this below the input 0/1
                      decoration: InputDecoration(
                        counterText: "", //it hides 0/1
                        filled: true,
                        fillColor: Color.fromRGBO(255, 231, 192, 1),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 20,),
            CustomButtonScr(text: 'Verify',
            onPressed: () {
              navigationPop(context, ForgotPasswordScreen());
            },
            ),
          ],
        ),
      ),
    );
  }
}