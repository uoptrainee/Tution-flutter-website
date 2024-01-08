import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key});

  List<Widget> pageChildren(double width) {
    return [
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mobile \nDeveloper',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                'A mobile app developer uses programming languages and development skills to create, test, and develop applications on mobile devices.',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            ),

            SizedBox(width: 30,),
             MaterialButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                onPressed: (){},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 40.0),
                  child: Text(
                    'Our Packages',
                    style: TextStyle(color: Colors.pink,fontWeight: FontWeight.bold,fontSize: 20.0),
                  ),
                ),
              )
          ],
        ),
        
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 40.0),
        child: Image.asset("assets/images/logo.png",
        width: width
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width/2),
          );
        } else {
          return Column(
            children: pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }
}
