import 'package:flutter/material.dart';
//import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:the_sun_shine/utils/slidedot.dart';
//import 'package:the_sun_shine/utils/category.dart';
import 'package:the_sun_shine/utils/category_list.dart';
//import 'package:the_sun_shine/widgets/product_card.dart';
import 'package:the_sun_shine/widgets/product_grid.dart';
import '../widgets/custom_bottom_navigationbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();
  

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70, //increase height for better layout
        backgroundColor: Colors.white,
        //elevation: 2, //shadow create in appbar background
        title: Row(
          children: [
            //Logo
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Image.asset(('images/Group_1498.png')),
            ),

            //Search Bar
            Expanded(
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 239, 213, 1.0),
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      icon: Icon(Icons.search, color: Colors.grey),
                      hintText: "Search...",
                      border: InputBorder.none,
                    ),
                  ),
                ),

                //Row(
                //   children: [
                //     SizedBox(width: 10),
                //     Icon(
                //       Icons.search,
                //       color: Colors.grey,
                //     ),
                //     SizedBox(
                //       width: 5,
                //     ),
                //     Text(
                //       'Search',
                //       style: TextStyle(color: Colors.grey),
                //     )
                //   ],
                // ),
              ),
            ),

            //Circular Profile Icons
            Padding(
              padding: EdgeInsets.only(left: 10),
              //CircleAvatar is used to create a circular background for the profile icon.
              //We can customize it by using: backgroundImage: AssetImage('assets/profile.jpg'),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        //padding: EdgeInsets.all(16),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
//banner section -->
            //ClipRRect(
            //   borderRadius: BorderRadius.circular(12),
            Stack(
              children: [
                Image.asset(
                  'images/happywomen.png',
                  fit: BoxFit.cover,
                  height: 161,
                  width: double.infinity,
                ),
                Positioned(
                  left: 30,
                  top: 30,
                  child: Column(
                    children: [
                      Text(
                        'Get The Best\nOutfit For You',
                        style: TextStyle(
                            fontSize: 22,
                            //fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),

                      //button
                      SizedBox(height: 8),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(194, 153, 88, 1),
                            shape: StadiumBorder(),
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(
                                //button er bhetorer space
                                horizontal: 16,
                                vertical: 6),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Shop Now',
                          ))
                    ],
                  ),
                )
              ],
            ),
            //)
            SizedBox(height: 8),
            Slidedot(
              count: 4,
            ),

// Catagory section
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'See All',
                        style: TextStyle(color: Color.fromRGBO(194, 153, 88, 1),fontSize: 18),
                      ),
                      )
        // Catagory grid
                  ],
              ),
             ),
             SizedBox(height: 200,
             child: GridView.builder(
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,// 🔥 2 ROWS
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 5,
                  childAspectRatio: 0.8

                ),
                itemBuilder: (context, index){
                  final item = categories[index];

                  return Padding(padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      children: [
        //Circle Image
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.orange.shade100,
                          backgroundImage: AssetImage(item.image,
                          
                          ),
                        ),
                        Text(item.name,
                        style: TextStyle(
                          fontSize: 14,
                          fontStyle: FontStyle.normal,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          //height: 0.7,// line-height: 70%
                          letterSpacing: 0,
                        ),
                        ),

                      ],
                    ),
                  );
                },
                ),
              ),
    //Reward Section
              Padding(
                padding: const EdgeInsets.only(top:20.0,left:20,right:20),
                child: Stack(
                  children: [
                  Container(
                    height: 140,
                    decoration: BoxDecoration(
                      color: Color(0XFFC29958),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Positioned(
                    left: 24,
                    top: 20,
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Get 20 points',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                        ),
                        ),
                        SizedBox(height: 8,),
                        Text('To get your reward',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18
                        ),
                        ),
                      ],
                    ),
                    ),
                    Positioned(
                      left: 24,
                      bottom:15,
                      child:ElevatedButton(onPressed:(){}, 
                      child: Text('Check In',
                      style: TextStyle(
                        color: Color(0XFFC29958), 
                      ),)
                      )
                    ),

                    Positioned(
                      right: 30,
                      bottom: 0,
                      top: 0,
                      child:Image.asset('assets/images/model.png',
                      //fit: BoxFit.cover,
                      ), 
                      )
                    
                  ],

                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top:15, left:20,right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Offers",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                    ),
                    Text('See All',
                    style:TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: Color(0xFFC29958),
                      decorationThickness: 4,
                      color:Color(0XFFC29958)
                    ), 
                    )
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: ProductGrid(),
              ),

              SizedBox(height: 20,),
              Text('Recommended for you'),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: 0,
      ),
    );
  }
}
