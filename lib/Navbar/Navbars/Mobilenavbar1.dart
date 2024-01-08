import 'package:flutter/material.dart';

class Mobilenavbar1 extends StatelessWidget {
  const Mobilenavbar1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
      child: Container(
        child: Column(
          children: [
              Text('MAxcreate studio',
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text('Home',style: TextStyle(color: Colors.white),),
                  SizedBox(width: 30,),
                  Text('About us',style: TextStyle(color: Colors.white),),
                  SizedBox(width: 30,),
                  Text('Contact',style: TextStyle(color: Colors.white),),
                  SizedBox(width: 30,),
                 
                  
                ],),
              )
              
            ]
        ),
      ),
    );
  }
}