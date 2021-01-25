import 'package:blood_bank_fyp/SignIn/admin_signin.dart';
import 'package:blood_bank_fyp/SignIn/bloodbank_signin.dart';
import 'package:blood_bank_fyp/SignIn/donor_signin.dart';
import 'package:blood_bank_fyp/SignIn/recipient_signIn.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  static final id = '/signin';
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SafeArea(
        child: Container(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  signInButtons("Sign In As Admin", AdminSignIn()),
                  signInButtons("Sign In As Donor", DonorSignIn()),
                  signInButtons("Sign In As Recipient", RecipientSignIn()),
                  signInButtons("Sign In As Blood Bank", BloodBankSignIn()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget signInButtons(String txt, dynamic push) {
    return Container(
      margin: EdgeInsets.all(8.0),
      width: 180,
      height: 80,
      child: FlatButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => push));
        },
        child: Text(
          txt,
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        color: Colors.red,
      ),
    );
  }
}
