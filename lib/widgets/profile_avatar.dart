import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final String imgPath;
  final String userName;
  final VoidCallback?
      onEdit; //VoidCallback is a function that Takes no parameters and Returns nothing (void)

  const ProfileAvatar({
    super.key,
    required this.imgPath,
    required this.userName,
    this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip
                .none, //Don't cut anything outside.Normally, Flutter cuts off anything that goes outside a widget's boundaries.
            children: [
              //Profile Image
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(imgPath),
                ),
              ),

              //Edit Button
              Positioned(
                left: 80,
                right: 0,
                bottom: 10,
                child: InkWell(
                  //InkWell makes any widget touchable (clickable).
                  onTap: onEdit,
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.add_to_photos_rounded,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              userName,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
