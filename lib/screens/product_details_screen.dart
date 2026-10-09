import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/product_model.dart';
import '../providers/wishlist_provider.dart';

class ProductDetailsScreen extends ConsumerWidget {
  const ProductDetailsScreen({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final isWishlisted = ref.watch(wishlistProvider).contains(product.id);

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
              crossAxisAlignment: CrossAxisAlignment.start,
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
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                ),
                ),
                 
                 const SizedBox(height: 30),
                  
                  //Add to Cart
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton.icon(
                      onPressed: (){

                         // Cart functionality will be added later

                      },
                      icon: const Icon(Icons.shopping_cart), 
                      label: Text(
                        'Add to Cart',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                
                
                SizedBox(height: 15,),

                //Add to Wishlist
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child:OutlinedButton.icon(
                    onPressed: (){
                      ref
                        .read(wishlistProvider.notifier)
                        .toggleWishlist(product.id);
                    }, 
                  icon:Icon(
                    isWishlisted
                      ?Icons.favorite
                      :Icons.favorite_border,
                  ),
                  label:Text(
                    isWishlisted
                      ?'Remove from Wishlist'
                      :'Add to Wishlist',
                    style: TextStyle(fontSize: 18),
                  ),
                 )
                )
              ],
            ),
            )
          ],
        ),
      ),
    );
  }
}
