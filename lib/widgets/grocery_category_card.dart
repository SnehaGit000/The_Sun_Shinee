import 'package:flutter/material.dart';
import 'package:the_sun_shine/models/grocery_category_model.dart';

class GroceryCategoryCard extends StatelessWidget {
    final GroceryCategory category;
  
  const GroceryCategoryCard({
    super.key,
    required this.category,
  });
  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Color(0xFFF1DFC0),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            category.icon,
            size: 30,
            color: Color(0xFFC29958),
          ),

           const SizedBox(height: 8),
           Text(
            category.name,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
           ),
          ),
        ],
      ),
    );
  }
}