import 'package:flutter/material.dart';
import 'package:website/EnrollNow/Desktop/LAndingEnroll.dart';
import 'package:website/EnrollNow/EnrollStart.dart';
import 'package:website/ReactNative/LandingPageR/LandingPageR.dart';
import 'package:website/ReactNative/ReactNativeStart.dart';

class Enroll extends StatelessWidget {
  const Enroll({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
  body: Container(
    color: Colors.white, // Set the background color to white
    child: SingleChildScrollView(
      child: Column(
        children: [
          EnrollStart(), // Assuming ReactNativeR is a widget you want to include
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
            child: LandingEnroll(),
          ),
        ],
      ),
    ),
  ),
);

  }
}