import 'package:flutter/material.dart';
import 'package:website/Landingpage/Landingpage.dart';
import 'package:website/Navbar/Getstarted/Getstrated.dart';
// import 'package:website/Landingpage/Landingpage.dart';
// import 'package:website/Navbar/Navbar.dart';

class Coursedetails extends StatelessWidget {
  const Coursedetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color.fromRGBO(36, 11, 54, 1.0),Color.fromRGBO(195, 20, 50, 1.0)]
            )
        ),
     child: SingleChildScrollView(
          child: Column(
           children: [Navbar1() , Padding(
             padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 40.0),
             child: LandingPage(),
             
           )],
          ),
        ),
      ),
    );

   
    
  }
}