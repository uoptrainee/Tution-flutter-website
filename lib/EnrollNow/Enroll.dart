import 'package:flutter/material.dart';
import 'package:website/EnrollNow/Desktop/LandingEnroll.dart';
import 'package:website/EnrollNow/EnrollStart.dart';

class Enroll extends StatelessWidget {
  const Enroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              EnrollStart(),
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
