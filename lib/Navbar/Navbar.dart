import 'package:flutter/material.dart';
import 'package:website/Navbar/Desktopnavbar.dart';
import 'package:website/Navbar/Mobilenavbar.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) 
      {
        if(constraints.maxWidth>1200){
          return Desktopnavbar();
        }else if(constraints.maxWidth>800 && constraints.maxWidth<1200){
          return Desktopnavbar();
        }else {
          return Mobilenavbar();
        }
      },
      );
    }
}