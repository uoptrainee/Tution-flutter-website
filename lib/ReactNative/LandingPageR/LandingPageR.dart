import 'package:flutter/material.dart';

class LandingPageR extends StatelessWidget {
  const LandingPageR({super.key});

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
                'open-source UI software framework created by \n Meta Platforms, Inc. It is used to develop applications for\n Android, Android TV, iOS, macOS, tvOS, Web, \n Windows and UWP by enabling developers to use the \n React framework along with native platform\ncapabilities.',
                style: TextStyle(color: Colors.brown, fontSize: 20.0,fontWeight: FontWeight.bold),
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
        '    -> Reack js',
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
  onPressed: () {},
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
          "assets/images/react.png",
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
