import 'dart:ui';

import 'package:blood_bank_fyp/screens/signin_screen.dart';
import 'package:blood_bank_fyp/screens/signup_screen.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  static final id = '/';
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Logo Image
            Container(
              width: 150,
              height: 120,
              child: Image.asset('assets/images/logo.jpg'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Buttons Of Sign In and Sign Up
                firstScreenButtons("Sign In", SignInScreen()),
                firstScreenButtons("Sign Up", SignUpScreen()),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget firstScreenButtons(String txt, dynamic push) {
    return Container(
      child: FlatButton(
        color: Colors.red,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => push),
          );
        },
        child: Text(
          txt,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
