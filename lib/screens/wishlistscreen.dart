import 'package:flutter/material.dart';
import '../utils/custom_appbar.dart';
import '../utils/navigations.dart';
import '../screens/home.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "My WishList",
        onPressed:() {
          navigationPushReplacement(context, HomeScreen());
        },
      ),
    );
  }
}