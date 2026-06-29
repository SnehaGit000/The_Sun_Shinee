import "package:flutter/material.dart";
import "../data/product_data.dart";
import "product_card.dart";

class ProductGrid extends StatelessWidget{
  ProductGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 14,
        mainAxisSpacing: 14,
        childAspectRatio: .75,
        ),
      physics: NeverScrollableScrollPhysics(), 
      itemBuilder: (context,index){
        return ProductCard(product: products[index]);
      }
      );
  }
}