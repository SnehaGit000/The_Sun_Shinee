import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {

  final String imgPath;
  final String userName;
  final VoidCallback? onEdit; //VoidCallback is a function that Takes no parameters and Returns nothing (void)

  const ProfileAvatar({
    super.key,
    required this.imgPath,
    required this.userName,
    this.onEdit,
    });


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

      ],
    );
  }
}