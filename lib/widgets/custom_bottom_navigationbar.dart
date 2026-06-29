import 'package:flutter/material.dart';
import 'package:the_sun_shine/screens/cartscreen.dart';
import 'package:the_sun_shine/screens/home.dart';
import 'package:the_sun_shine/screens/notificationscreen.dart';
import 'package:the_sun_shine/screens/profilescreen.dart';
import 'package:the_sun_shine/screens/wishlistscreen.dart';
import 'package:the_sun_shine/utils/navigations.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final int currentIndex;
  CustomBottomNavigationBar({
    super.key,
    required this.currentIndex,
    });

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();

    
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  
  late int selectedIndex;

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.currentIndex;
  }  

  void onItemTap(int index){
    setState(() {
      selectedIndex = index;
    });

    switch(index){
      case 0:
        navigationPushReplacement(context, HomeScreen());
        break;
      case 1:
        navigationPushReplacement(context, WishlistScreen());
        break;
      case 2:
        navigationPushReplacement(context, CartScreen());
        break;
      case 3:
        navigationPushReplacement(context, Notificationscreen());
        break;
      case 4:
        navigationPushReplacement(context, Profilescreen());
        break;
    }
    }
  

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: onItemTap,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color(0xFFC29958),
      unselectedItemColor: Colors.blueGrey,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Wishlist',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'Notification',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }
}