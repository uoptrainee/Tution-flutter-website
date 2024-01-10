import 'package:flutter/material.dart';

class MobileNavbarEnroll extends StatelessWidget {
  const MobileNavbarEnroll({super.key});

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
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/e.png",
              width: 150,
              height: 150,
            ),
            SizedBox(width: 12),
            Text(
              'WELCOME',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 12),
            Image.asset(
              "assets/images/sucess.png",
              width: 150,
              height: 150,
            ),
            Image.asset(
              "assets/images/design.png",
              width: 150,
              height: 150,
            ),
          ],
        ),
      ],
    ),
  ),
);





  }
}