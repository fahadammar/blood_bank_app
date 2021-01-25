import 'package:blood_bank_fyp/SignUp/admin.dart';
import 'package:blood_bank_fyp/SignUp/blood_bank.dart';
import 'package:blood_bank_fyp/SignUp/donor.dart';
import 'package:blood_bank_fyp/SignUp/recipient.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  static final id = '/signup';
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                  signUpButtons("Sign Up As Admin", AdminSignUp()),
                  signUpButtons("Sign Up As Donor", DonorSignUp()),
                  signUpButtons("Sign Up As Recipient", RecipientSignUp()),
                  signUpButtons("Sign Up As Blood Bank", BloodBankSignUp()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget signUpButtons(String txt, dynamic push) {
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
