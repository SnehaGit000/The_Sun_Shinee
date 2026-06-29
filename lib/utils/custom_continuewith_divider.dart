import'package:flutter/material.dart';

class ContinueWith extends StatelessWidget {
  const ContinueWith({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Text('———————————',
                //overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.right,
                style: TextStyle(color: Colors.black,
                fontWeight: FontWeight.bold),
                ),
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text('Continue with',
                style: TextStyle(color: Colors.black,
                fontSize: 17),
                
                ),
                ),
                Expanded(
                  child: Text('———————————',
                //overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.black,
                fontWeight: FontWeight.bold,
                ),
                ),
                ),
            ],
          );
  }
}