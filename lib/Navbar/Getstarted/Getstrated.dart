import 'package:flutter/material.dart';
import 'package:website/Navbar/Navbars/Desktopnavbar1.dart';
import 'package:website/Navbar/Navbars/Mobilenavbar1.dart';

class Navbar1 extends StatelessWidget {
  const Navbar1({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) 
      {
        if(constraints.maxWidth>1200){
          return DesktopNavbar1();
        }else if(constraints.maxWidth>800 && constraints.maxWidth<1200){
          return DesktopNavbar1();
        }else {
          return Mobilenavbar1();
        }
      },
      );
  }
}