import 'package:flutter/material.dart';

class DesktopNavbarR extends StatelessWidget {
  const DesktopNavbarR({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Container(
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/images/e.png",
              width: 100, // Set your desired width
            ),
            Row(
              children: [
               Text('ReactNative Development', 
            style: TextStyle(fontSize: 40.0,
            color: Colors.white,fontWeight: FontWeight.bold),),

                //SizedBox(width: 30),
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}