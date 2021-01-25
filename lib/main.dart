import 'package:blood_bank_fyp/SignUp/admin.dart';
import 'package:blood_bank_fyp/SignUp/blood_bank.dart';
import 'package:blood_bank_fyp/SignUp/donor.dart';
import 'package:blood_bank_fyp/SignUp/recipient.dart';
import 'package:blood_bank_fyp/screens/first_screen.dart';
import 'package:blood_bank_fyp/screens/signin_screen.dart';
import 'package:blood_bank_fyp/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: FirstScreen.id,
      routes: {
        FirstScreen.id: (context) => FirstScreen(),
        SignUpScreen.id: (context) => SignUpScreen(),
        SignInScreen.id: (context) => SignInScreen(),
        AdminSignUp.id: (context) => AdminSignUp(),
        BloodBankSignUp.id: (context) => BloodBankSignUp(),
        DonorSignUp.id: (context) => DonorSignUp(),
        RecipientSignUp.id: (context) => RecipientSignUp(),
      },
    );
  }
}
