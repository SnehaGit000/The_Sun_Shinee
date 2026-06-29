import 'package:flutter/material.dart';
import '../models/product_model.dart';

class ProductCard extends StatelessWidget{
  final ProductModel product;

   ProductCard({
    super.key,
    required this.product,
  });
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffF1DFC0),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [

//Product Image 
          Positioned.fill(
            child: Padding(
              padding: EdgeInsets.only(top:20),
              child: Image.asset(product.image,
              fit: BoxFit.contain),
              ),
              ),
//Discount
          if (product.discount != null)
          Positioned(
            top: 12,
            left: 12,
            child: Container(
              color: const Color(0xffC29958),
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 3,
                ),
                child: Text(
                  product.discount!,
                  style: TextStyle(
                    color: Colors.black
                  ),
                ),
                ),
        ),
//Favorite
            Positioned(
              right: 12,
              top: 12,
              child: Icon(Icons.favorite_border,
              size: 30,
               color: Color(0xff9D7A44),
               )
              ),
//bottom info
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                   BoxShadow(
                    color: Colors.black.withValues(alpha: 0.2),//shadow color with transparency, replace .withOpacity(0.2)
                    spreadRadius: 2,//extends the shadow further out
                    blurRadius: 2,//soften the shadow edge
                    offset: Offset(0,4), //position shadow (x=0 to center horizontally, y=4 to shift downwards)
                   )
                  ],
                  borderRadius: BorderRadius.circular(20)
                ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20,top:12),
                    child: Text(product.title,
                    style:TextStyle(
                      fontSize: 18,
                      //fontWeight: FontWeight.bold,
                    ) ,
                    ),
                  )
                ],
              ),
              ),
            ),
        SizedBox(height: 8,),
          Row(
            children: [
              Text(
                "\$${product.price}",
                style: TextStyle(
                  color: Color(0xffC29958),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Icon(Icons.star,
                  color: Colors.amber,),
                  Text(product.rating.toString()),
                ],
              )
            ],
          ),
      ],
      ),
    );
  }
}