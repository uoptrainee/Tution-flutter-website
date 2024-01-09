import 'package:flutter/material.dart';
import 'package:website/ReactNative/NavbarR/DesktopNavbarR.dart';
import 'package:website/ReactNative/NavbarR/MobileNavbarR.dart';

class ReactNativeR extends StatelessWidget {
  const ReactNativeR({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) 
      {
        if(constraints.maxWidth>1200){
          return DesktopNavbarR();
        }else if(constraints.maxWidth>800 && constraints.maxWidth<1200){
          return DesktopNavbarR();
        }else {
          return MobileNavbarR();
        }
      },
      );
  }
}