import 'package:flutter/material.dart';

class DesktopNavbarEnroll extends StatelessWidget {
  const DesktopNavbarEnroll({super.key});

  @override
  Widget build(BuildContext context) {
   return Padding(
  padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
  child: Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Colors.white, Colors.lightBlue],
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/e.png",
          width: 150,
        ),
        SizedBox(width: 12), // Add space between the first image and the text
        Text(
          'WELCOME',
          style: TextStyle(
            fontSize: 40.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 600), 
        Image.asset(
          "assets/images/sucess.png",
          width: 150,
        ),
        Image.asset(
          "assets/images/design.png",
          width: 150,
        ),
      ],
    ),
  ),
);

  }
}