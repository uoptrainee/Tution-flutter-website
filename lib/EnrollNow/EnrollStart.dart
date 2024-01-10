import 'package:flutter/material.dart';
import 'package:website/EnrollNow/Desktop/DesktopNavbarEnroll.dart';
import 'package:website/EnrollNow/Mobile/MobileNavbarEnroll.dart';

class EnrollStart extends StatelessWidget {
  const EnrollStart({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) 
      {
        if(constraints.maxWidth>1200){
          return DesktopNavbarEnroll();
        }else if(constraints.maxWidth>800 && constraints.maxWidth<1200){
          return DesktopNavbarEnroll();
        }else {
          return MobileNavbarEnroll();
        }
      },
      );
  }
}