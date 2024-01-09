import 'package:flutter/material.dart';
import 'package:website/Flutter/Flutter.dart';
import 'package:website/Flutter/FlutterStart.dart';
import 'package:website/Java/Java.dart';
import 'package:website/ReactNative/ReactNative.dart';

class LandingPageCourse extends StatelessWidget {
  const LandingPageCourse({Key? key});

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
                ' process of creating \n software applications that \n run on a mobile device.',
                style: TextStyle(color: Colors.brown, fontSize: 30.0,fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              'Courses',
              style: TextStyle(
                color: Color.fromARGB(255, 3, 98, 241),
                fontWeight: FontWeight.bold,
                fontSize: 38.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Flutter()),
                      );
                    },
                    child: Text(
                      '    -> Flutter',
                      style: TextStyle(color: Colors.white, fontSize: 25.0),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ReactNative()),
                      );
                    },
                    child: Text(
                      '    -> React Native',
                      style: TextStyle(color: Colors.white, fontSize: 25.0),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {
                       Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Java()),
                      );
                    },
                    child: Text(
                      '    -> Java',
                      style: TextStyle(color: Colors.white, fontSize: 25.0),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 40.0),
        child: Image.asset(
          "assets/images/dev.png",
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
