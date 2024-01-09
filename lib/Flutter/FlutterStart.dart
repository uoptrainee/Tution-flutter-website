import 'package:flutter/material.dart';
import 'package:website/Flutter/LandingPageF/NavbarF/DesktopNavbarF.dart';
import 'package:website/Flutter/LandingPageF/NavbarF/MobileNavbarF.dart';

class FlutterStart extends StatelessWidget {
  const FlutterStart({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) 
      {
        if(constraints.maxWidth>1200){
          return DesktopNavbarF();
        }else if(constraints.maxWidth>800 && constraints.maxWidth<1200){
          return DesktopNavbarF();
        }else {
          return MobileNavbarF();
        }
      },
      );
  }
}