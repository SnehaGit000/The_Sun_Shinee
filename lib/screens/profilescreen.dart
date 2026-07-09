import 'package:flutter/material.dart';
import 'package:the_sun_shine/screens/home.dart';
import 'package:the_sun_shine/utils/navigations.dart';
import '../utils/custom_appbar.dart';
import '../widgets/profile_avatar.dart';

class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Profile",
        onPressed:() {
          navigationPushReplacement(context, HomeScreen());
        },
      ),
      body: 
        ProfileAvatar(
          imgPath: "imges/profilepic.png",
          userName: 'Sneha Chakraborty',
          onEdit: (){
            print('Chane profile picture');
          },
        )
      );
  }
}