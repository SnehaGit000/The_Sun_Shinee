import 'package:flutter/material.dart';
import '../utils/custom_appbar.dart';
import '../utils/navigations.dart';
import '../screens/home.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

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