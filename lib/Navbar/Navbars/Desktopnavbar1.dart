import 'package:flutter/material.dart';

class DesktopNavbar1 extends StatelessWidget {
  const DesktopNavbar1({Key? key});

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
               Text('welcome to mobile application development', 
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
