import 'package:flutter/material.dart';
import 'package:website/Java/NavbarJ/DesktopNavbarJ.dart';
import 'package:website/Java/NavbarJ/MobileNavbar.dart';

class JavaStart extends StatelessWidget {
  const JavaStart({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) 
      {
        if(constraints.maxWidth>1200){
          return DesktopNavbarJ();
        }else if(constraints.maxWidth>800 && constraints.maxWidth<1200){
          return DesktopNavbarJ();
        }else {
          return MobileNavbarj();
        }
      },
      );
  }
}