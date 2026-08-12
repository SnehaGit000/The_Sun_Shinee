import 'package:flutter/material.dart';
import '../utils/custom_appbar.dart';
import '../utils/navigations.dart';
import '../screens/home.dart';
import '../widgets/custom_bottom_navigationbar.dart';

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
       bottomNavigationBar: CustomBottomNavigationBar(
          currentIndex: 1,
  ),
    );
  }
}