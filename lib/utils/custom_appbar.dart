import 'package:flutter/material.dart';

//implements PreferredSizeWidget --> important for custom Appbar
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{

  final String? title;
  final Function() ? onPressed;


  const CustomAppBar({this.title,this.onPressed,super.key});
  

  @override
  // ✅ This line is required for PreferredSizeWidget
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      title:  title == null ? null : Text(title!,// if null, no title,
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w700
      ),
      ),
      leading: IconButton(
            icon:Icon(
              Icons.arrow_back,
              color: Colors.black,),
              onPressed: onPressed ??(){
              Navigator.pop(context);
            },
          ),
    );
  }
}