import 'package:flutter/material.dart';
import '../models/product_model.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Product Image
            Container(
              height: 350,
              width: double.infinity,
              child: Image.asset(
                product.image,
                fit: BoxFit.contain,
              ),
            ),
            Padding(padding: EdgeInsets.all(20),
            child: Column(
              children: [
                
                //Discount
                if (product.discount != null)
                Container(
                  padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                    color: const Color(0xffC29958),
                  child: Text(
                    product.discount!,
                    style: const TextStyle(
                          color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                  
                  // Product title
                  Text(product.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                 const SizedBox(height: 12),
                  
                  // Rating
                  Row(children: [
                    Icon(Icons.star,
                    color:Colors.amber,
                    ),
                    SizedBox(width: 5,),
                    Text(
                      product.rating.toString(),
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                 
                 // Price
                Text('\$${product.price}',
                style: TextStyle(
                  color: Color(0xffC29958),
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                ),
                ),
                 
                 const SizedBox(height: 30),
                  
                  //Add to Cart
                  
              ],
            ),
            )
          ],
        ),
      ),
    );
  }
}
