import 'package:flutter/material.dart';
import 'package:website/EnrollNow/Desktop/LAndingEnroll.dart';
import 'package:website/EnrollNow/Enroll.dart';
import 'package:website/EnrollNow/EnrollStart.dart';
import 'package:website/Landingpage/Landingpage.dart';
import 'package:website/Navbar/Navbar.dart';
//import 'package:website/Navbaritems/Coursedetails.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color.fromRGBO(195, 20, 50, 1.0),Color.fromRGBO(36, 11, 54, 1.0)]
            )
        ),
        child: SingleChildScrollView(
          child: Column(
           children: [Navbar() , Padding(
             padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 40.0),
             child: LandingPage(),
             
           )],
          ),
        ),
      ),
    );
  }
}