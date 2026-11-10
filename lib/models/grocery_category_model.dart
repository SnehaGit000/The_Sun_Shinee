import 'package:flutter/material.dart';

class GroceryCategory{
  final String name;
  final IconData icon;

  GroceryCategory({
    required this.name,
    required this.icon,
  });
}

final List<GroceryCategory> groceryCatagories = [
  GroceryCategory(name: 'Fruits', icon: Icons.apple),
  GroceryCategory(name: 'Vegetables', icon: Icons.eco),
  GroceryCategory(name: 'Dairy', icon: Icons.water_drop),
  GroceryCategory(name: 'Bekary', icon: Icons.bakery_dining),
  GroceryCategory(name: 'Snacks', icon: Icons.fastfood),
  GroceryCategory(name: 'Beverages', icon: Icons.local_cafe),
];