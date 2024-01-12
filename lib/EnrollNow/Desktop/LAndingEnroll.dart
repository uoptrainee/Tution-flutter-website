import 'package:flutter/material.dart';

class LandingEnroll extends StatefulWidget {
  const LandingEnroll({Key? key}) : super(key: key);

  @override
  _LandingEnrollState createState() => _LandingEnrollState();
}

class _LandingEnrollState extends State<LandingEnroll> {
  String selectedPackage1 = 'Basic';
  String selectedPackage2 = 'Pro';

  @override
  List<Widget> pageChildren(double width, BuildContext context) {
    return [
      Container(
        width: width,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi Naveed!..',
              style: TextStyle(
                color: Color.fromARGB(255, 3, 98, 241),
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome To New Journey With \n You..',
                    style: TextStyle(
                      color: Colors.brown,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                'Flutter development',
                style: TextStyle(
                  color: Color.fromARGB(255, 3, 98, 241),
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '  Course Modules.                                   Course Duration',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text('   -> Dart.                                                             -> WeekDays :- 06 Months. ', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.brown, fontSize: 18.0)),
                  Text('   -> FireBase.                                                     -> Weekends :- 01 Year.', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.brown, fontSize: 18.0)),
                  Text('   -> Practical projects.', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.brown, fontSize: 18.0)),
                ],
              ),
            ),
            // Divider line
            SizedBox(height: 20.0),
            Text(
              '  Course Investment.',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 5.0),
            Text('   -> \$50 For 6 Months', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.brown, fontSize: 18.0)),
            Text('   -> \$80 For 1 Year', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.brown, fontSize: 18.0)),
          ],
        ),
      ),
      Divider(thickness: 10, color: Colors.grey),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '  Personal Information.',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              decoration: InputDecoration(labelText: 'First Name'),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              decoration: InputDecoration(labelText: 'Last Name'),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(height: 10.0),

            // Package 1 Dropdown Button
            DropdownButtonFormField<String>(
              value: selectedPackage1,
              onChanged: (String? value) {
                setState(() {
                  selectedPackage1 = value!;
                });
              },
              items: <String>['Basic', '\$50 For 6 Months', '\$80 For 1 Year']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              decoration: InputDecoration(
                labelText: 'Select Package ',
              ),
            ),
            // SizedBox(height: 10.0),

            // // Package 2 Dropdown Button
            // DropdownButtonFormField<String>(
            //   value: selectedPackage2,
            //   onChanged: (String? value) {
            //     setState(() {
            //       selectedPackage2 = value!;
            //     });
            //   },
            //   items: <String>['Pro', 'Premium']
            //       .map<DropdownMenuItem<String>>((String value) {
            //     return DropdownMenuItem<String>(
            //       value: value,
            //       child: Text(value),
            //     );
            //   }).toList(),
            //   decoration: InputDecoration(
            //     labelText: 'Select Package 2',
            //   ),
            // ),

            SizedBox(height: 10.0),

            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                    minWidth: 100,
                    height: 50,
                    color: Colors.pink,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => const Enroll()),
                      // );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                      child: Text(
                        'Next',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      Divider(thickness: 10, color: Colors.grey),
    Padding(
  padding: const EdgeInsets.symmetric(vertical: 10.0),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Image.asset(
            "assets/images/master.png",
            width: 70,
            height: 70,
          ),
          Image.asset(
            "assets/images/apple.png",
            width: 50,
            height: 50,
          ),
          Image.asset(
            "assets/images/paypel.png",
            width: 50,
            height: 40,
          ),
        ],
      ),
      Text(
        '  Payment Information.',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 25.0,
        ),
      ),
      SizedBox(height: 10.0),
      TextFormField(
        decoration: InputDecoration(
          labelText: 'Card Number',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
      ),
      SizedBox(height: 10.0),
      TextFormField(
        decoration: InputDecoration(
          labelText: 'Exp date',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
      ),
      SizedBox(height: 10.0),
      TextFormField(
        decoration: InputDecoration(
          labelText: 'Dvv',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
      ),
      SizedBox(height: 10.0),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              minWidth: 100,
              height: 50,
              color: Colors.pink,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const Enroll()),
                // );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: Text(
                  'Pay',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
              ),
            ),
          ),
        ],
      ),
    ],
  ),
),


         MaterialButton(
                    minWidth: 100,
                    height: 50,
                    color: Colors.pink,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => const Enroll()),
                      // );
                    },
                    child: Padding(
                      
                      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                      child: Text(
                        'Enroll Now',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: pageChildren(constraints.biggest.width / 2, context),
          );
        } else {
          return SingleChildScrollView(
            child: Column(
              children: pageChildren(constraints.biggest.width, context),
            ),
          );
        }
      },
    );
  }
}
