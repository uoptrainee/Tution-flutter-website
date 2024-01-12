import 'package:flutter/material.dart';

class test extends StatelessWidget {
  const test({super.key});

  @override
  List<Widget> pageChildren(double width, BuildContext context) {
    return [
      Container(
        width: width,
        child: ListView(
          shrinkWrap: true,
          children: [
            Text(
              'What ?',
              style: TextStyle(
                color: Color.fromARGB(255, 3, 98, 241),
                fontWeight: FontWeight.bold,
                fontSize: 38.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                ' Googles portable UI toolkit for \n crafting beautiful, natively compiled/n applications for mobile, web, and \n desktop from a single codebase..',
                style: TextStyle(color: Colors.brown, fontSize: 30.0,fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              'Course Modules ?',
              style: TextStyle(
                color: Color.fromARGB(255, 3, 98, 241),
                fontWeight: FontWeight.bold,
                fontSize: 38.0,
              ),
            ),
            Padding(
  padding: const EdgeInsets.symmetric(vertical: 20.0),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        '    -> Dart Programming',
        style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 20),
      Text(
        '    -> Firebase',
        style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 20),
      Text(
        '    -> Practical Project',
        style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 20),
    ],
  ),
),
 SizedBox(width: 30,),
            MaterialButton(
  minWidth: 100, // Set your desired width
  height: 50,   // Set your desired height
  color: Colors.white,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
  onPressed: () {
    //Navigator.push(
                        //context,
                        //MaterialPageRoute(builder: (context) => const Enroll()),
                      //);
  },
  child: Padding(
    padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
    child: Text(
      'Enroll Now',
      style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold, fontSize: 20.0),
    ),
  ),
),

            
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 40.0),
        child: Image.asset(
          "assets/images/flutter.png",
          width: width,
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
            children: pageChildren(constraints.biggest.width / 2, context),
          );
        } else {
          return Column(
            children: pageChildren(constraints.biggest.width, context),
          );
        }
      },
    );
  }
}
