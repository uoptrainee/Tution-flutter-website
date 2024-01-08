import 'package:flutter/material.dart';
import 'package:website/Navbaritems/Coursedetails.dart';

class Desktopnavbar extends StatelessWidget {
  const Desktopnavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
      child: Container(
        
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text('MAxcreate studio',
            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),
            ),
            Row(children: [
              Text('Home',style: TextStyle(color: Colors.white),),
              SizedBox(width: 30,),
              Text('About us',style: TextStyle(color: Colors.white),),
              SizedBox(width: 30,),
              Text('Contact',style: TextStyle(color: Colors.white),),
              SizedBox(width: 30,),
              MaterialButton(
                color: Colors.pink,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                onPressed: (){
                  Navigator.push(
                context,
                  MaterialPageRoute(builder: (context) => const Coursedetails()),
                  );
                },
                child: Text(
                  'Get started',
                  style: TextStyle(color: Colors.white),
                ),
              )
              
            ],)
            
          ]),
          
      ),
    );
  }
}