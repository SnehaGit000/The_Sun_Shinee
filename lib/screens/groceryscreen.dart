
import 'package:flutter/material.dart';
import 'package:the_sun_shine/widgets/custom_bottom_navigationbar.dart';

class GroceryScreen extends StatelessWidget {
  const GroceryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grocery'),
        backgroundColor: const Color(0xFFC29958),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Shop by Category',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        ),


      bottomNavigationBar: CustomBottomNavigationBar(
          currentIndex: 1,
  ),
    );
  }
}
