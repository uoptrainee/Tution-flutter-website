import 'package:flutter/material.dart';
import 'package:website/EnrollNow/Enroll.dart';
import 'package:website/EnrollNow/EnrollStart.dart';
import 'package:website/Flutter/Flutter.dart';
import 'package:website/Sign_up/Desktop/Desktop_Signin.dart';

class MobileSignin extends StatefulWidget {
  const MobileSignin({Key? key}) : super(key: key);

  @override
  _MobileSigninState createState() => _MobileSigninState();
}

class _MobileSigninState extends State<MobileSignin> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
        child: Row(
          children: [
            Expanded(
              flex: 7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.white,
                    height: 150, // Fixed height
                    width: 150,
                    child: Image.asset(
                      'assets/images/e.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Center(
                    child: Text(
                      "Login To Your Account",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 35.0,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Login Using Social Network',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/facebook.png',
                        height: 30,
                        width: 30,
                      ),
                      Image.asset(
                        'assets/images/google+.png',
                        height: 50,
                        width: 50,
                      ),
                      Image.asset(
                        'assets/images/linkedin.png',
                        height: 35,
                        width: 35,
                      ),
                    ],
                  ),
                  Center(
                    child: Text(
                      'OR',
                      style: TextStyle(fontSize: 15.0, color: Colors.black),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextFormField(
                    obscureText: !_isPasswordVisible,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          setState(() {
                            _isPasswordVisible = !_isPasswordVisible;
                          });
                        },
                      ),
                    ),
                  ),
                  MaterialButton(
  minWidth: 100, // Set your desired width
  height: 50,   // Set your desired height
  color: Colors.white,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
  onPressed: () {
    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Enroll()),
                      );
  },
  child: Padding(
    padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
    child: Text(
      'Sign Up',
      style: TextStyle(color: Colors.lightBlue, fontWeight: FontWeight.bold, fontSize: 20.0),
    ),
  ),
),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                color: Colors.lightBlue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            // Add the functionality you want when the IconButton is pressed
                          },
                          icon: Icon(Icons.close), // Replace with your desired icon
                          color: Colors.white,
                          iconSize: 30.0,
                        ),
                      ],
                    ),
                    Text(
                      'New Here?',
                      style: TextStyle(
                        fontSize: 50.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Sign up and discover a great',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'amount of new opportunities!',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 50.0),
                    MaterialButton(
                      minWidth: 100,
                      height: 50,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const DesktopSignin()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.lightBlue,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
