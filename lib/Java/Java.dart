import 'package:flutter/material.dart';
import 'package:website/Java/JavaStart.dart';
import 'package:website/Java/LandingPageJ/LandingPageJ.dart';
import 'package:website/Landingpage/Landingpage.dart';

class Java extends StatelessWidget {
  const Java({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color.fromRGBO(36, 11, 54, 1.0), Color.fromRGBO(195, 20, 50, 1.0)]
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              JavaStart(), // Assuming ReactNativeR is a widget you want to include
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                child: LandingPageJ(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}