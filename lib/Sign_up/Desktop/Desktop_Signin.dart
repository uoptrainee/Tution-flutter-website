import 'package:flutter/material.dart';
import 'package:website/Sign_up/Mobile/MobileSignin.dart';

class DesktopSignin extends StatelessWidget {
  const DesktopSignin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.lightBlue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      child: Image.asset(
                        'assets/images/e.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(height: 20.0),
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
                    SizedBox(height: 20.0),
                    MaterialButton(
                      minWidth: 100,
                      height: 50,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      onPressed: () {
                        // Add the functionality for the button press
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                        child: Text(
                          'Sign In',
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
            Expanded(
              flex: 7,
              child: Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {
                            // Add the functionality you want when the IconButton is pressed
                          },
                          icon: Icon(Icons.close),
                          color: Colors.black,
                          iconSize: 30.0,
                        ),
                      ],
                    ),
                    Center(
                      child: Text(
                        "Create An Account",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 35.0,
                        ),
                      ),
                    ),
                    // Add TextFormFields
                    TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Name',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 0.0),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'NIC',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 0.0),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 0.0),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 0.0),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextFormField(
                    
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 0.0),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  MaterialButton(
                    minWidth: 100,
                    height: 40,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    onPressed: () {
                       Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const MobileSignin()),
                        );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.lightBlue,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
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
