import 'package:flutter/material.dart';
import '../utils/custom_appbar.dart';
import '../utils/navigations.dart';
import '../screens/home.dart';

class Notificationscreen extends StatelessWidget {
  const Notificationscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Notification",
        onPressed:() {
          navigationPushReplacement(context, HomeScreen());
        },
      ),
    );
  }
}