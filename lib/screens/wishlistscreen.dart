import 'package:flutter/material.dart';
import '../utils/custom_appbar.dart';
import '../utils/navigations.dart';
import '../screens/home.dart';
import '../widgets/custom_bottom_navigationbar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/wishlist_provider.dart';
import '../data/product_data.dart'; 
import '../widgets/product_card.dart';

class WishlistScreen extends ConsumerWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final wishlistIds = ref.watch(wishlistProvider);
    final wishlistProducts = products
        .where((product) => wishlistIds.contains(product.id))
        .toList();
    
    return Scaffold(
      appBar: CustomAppBar(
        title: "My WishList",
        onPressed:() {
          navigationPushReplacement(context, HomeScreen());
        },
      ),
      body: wishlistProducts.isEmpty
             ? Center(
                child: Text('Your Wishlist is Empty ❤️',
                style: TextStyle(
                  fontSize: 18, 
                  color: Color(0xff9D7A44),
                ),
                ),
             )
            :GridView.builder(
              padding: EdgeInsets.all(12),
              itemCount: wishlistProducts.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.62,
              ), 
              
              itemBuilder: (context, index){
                final product = wishlistProducts[index];
                
                return ProductCard(product: product);
              }
              )  ,
       bottomNavigationBar: CustomBottomNavigationBar(
          currentIndex: 1,
  ),
    );
  }
}