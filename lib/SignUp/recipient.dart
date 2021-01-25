import 'package:blood_bank_fyp/utils/validator.dart';
import 'package:flutter/material.dart';

//* Widgets
import 'package:blood_bank_fyp/widgets/custom_shape.dart';
import 'package:blood_bank_fyp/widgets/customappbar.dart';
import 'package:blood_bank_fyp/widgets/responsive_ui.dart';
import 'package:blood_bank_fyp/widgets/textformfield.dart';

class RecipientSignUp extends StatefulWidget {
  static final id = '/recipientsignup';
  @override
  _RecipientSignUpState createState() => _RecipientSignUpState();
}

class _RecipientSignUpState extends State<RecipientSignUp> {
  // Properties
  bool checkBoxValue = false;
  double _height;
  double _width;
  double _pixelRatio;
  bool _large;
  bool _medium;

  // FormKey
  var _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    _pixelRatio = MediaQuery.of(context).devicePixelRatio;
    _large = ResponsiveWidget.isScreenLarge(_width, _pixelRatio);
    _medium = ResponsiveWidget.isScreenMedium(_width, _pixelRatio);

    return Material(
      child: Scaffold(
        body: Container(
          height: _height,
          width: _width,
          margin: EdgeInsets.only(bottom: 5),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Opacity(opacity: 0.88, child: CustomAppBar()),
                clipShape(),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Recipient SignUp",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.red[600],
                        fontWeight: FontWeight.bold),
                  ),
                ),
                form(),
                acceptTermsTextRow(),
                SizedBox(
                  height: _height / 35,
                ),
                button(),
                infoTextRow(),
                // socialIconsRow(),
                signInTextRow(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Validator validator = Validator();

  // Functions
  Widget clipShape() {
    return Stack(
      children: <Widget>[
        Opacity(
          opacity: 0.75,
          child: ClipPath(
            clipper: CustomShapeClipper(),
            child: Container(
              height: _large
                  ? _height / 8
                  : (_medium ? _height / 7 : _height / 6.5),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.orange[200], Colors.pinkAccent],
                ),
              ),
            ),
          ),
        ),
        Opacity(
          opacity: 0.5,
          child: ClipPath(
            clipper: CustomShapeClipper2(),
            child: Container(
              height: _large
                  ? _height / 12
                  : (_medium ? _height / 11 : _height / 10),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.orange[200], Colors.pinkAccent],
                ),
              ),
            ),
          ),
        ),
        // Add Photo
        /*Container(
          height: _height / 5.5,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  spreadRadius: 0.0,
                  color: Colors.black26,
                  offset: Offset(1.0, 10.0),
                  blurRadius: 20.0),
            ],
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: GestureDetector(
              onTap: () {
                print('Adding photo');
              },
              child: Icon(
                Icons.add_a_photo,
                size: _large ? 40 : (_medium ? 33 : 31),
                color: Colors.orange[200],
              )),
        ),*/
      ],
    );
  }

  //! FORM
  Widget form() {
    return Container(
      margin: EdgeInsets.only(
          left: _width / 12.0, right: _width / 12.0, top: _height / 20.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            firstNameTextFormField(),
            SizedBox(height: _height / 60.0),
            ageTextFormField(),
            SizedBox(height: _height / 60.0),
            genderTextFormField(),
            SizedBox(height: _height / 60.0),
            bloodgroupTextFormField(),
            SizedBox(height: _height / 60.0),
            conditionTextFormField(),
            SizedBox(height: _height / 60.0),
            hospitalNameTextFormField(),
            SizedBox(height: _height / 60.0),
            homeaddressTextFormField(),
            SizedBox(height: _height / 60.0),
            locationTextFormField(),
            SizedBox(height: _height / 60.0),
            Text("Blood Reports"),
            SizedBox(height: _height / 60.0),
            phoneTextFormField(),
            SizedBox(height: _height / 60.0),
            emailTextFormField(),
            SizedBox(height: _height / 60.0),
            passwordTextFormField(),
          ],
        ),
      ),
    );
  }

  // INPUT FIELDS
  Widget firstNameTextFormField() {
    return CustomTextField(
      keyboardType: TextInputType.text,
      icon: Icons.person,
      validatorFunction: validator.validateName,
      hint: "Name",
    );
  }

  Widget ageTextFormField() {
    return CustomTextField(
      keyboardType: TextInputType.number,
      icon: Icons.calendar_today_rounded,
      validatorFunction: validator.validateAge,
      hint: "Age",
    );
  }

  Widget genderTextFormField() {
    return CustomTextField(
      keyboardType: TextInputType.text,
      icon: Icons.short_text,
      validatorFunction: validator.validateGender,
      hint: "Gender",
    );
  }

  Widget bloodgroupTextFormField() {
    return CustomTextField(
      keyboardType: TextInputType.text,
      icon: Icons.local_hospital,
      validatorFunction: validator.validateBloodGroup,
      hint: "Blood Group",
    );
  }

  Widget conditionTextFormField() {
    return CustomTextField(
      keyboardType: TextInputType.text,
      icon: Icons.control_point_duplicate,
      validatorFunction: validator.validatePatientCondition,
      hint: "Patient's Condition",
    );
  }

  Widget hospitalNameTextFormField() {
    return CustomTextField(
      keyboardType: TextInputType.text,
      icon: Icons.local_hospital_rounded,
      validatorFunction: validator.validateHospitalName,
      hint: "Hospital Name",
    );
  }

  Widget homeaddressTextFormField() {
    return CustomTextField(
      keyboardType: TextInputType.text,
      icon: Icons.home,
      validatorFunction: validator.validateAddress,
      hint: "Home Address",
    );
  }

  Widget locationTextFormField() {
    return CustomTextField(
      keyboardType: TextInputType.text,
      icon: Icons.map_outlined,
      hint: "Location",
    );
  }

  Widget emailTextFormField() {
    return CustomTextField(
      keyboardType: TextInputType.emailAddress,
      icon: Icons.email,
      validatorFunction: validator.validateEmail,
      hint: "Email ID",
    );
  }

  Widget phoneTextFormField() {
    return CustomTextField(
      keyboardType: TextInputType.number,
      icon: Icons.phone,
      validatorFunction: validator.validateMobile,
      hint: "Attendant's Phone Number",
    );
  }

  Widget passwordTextFormField() {
    return CustomTextField(
      keyboardType: TextInputType.text,
      obscureText: true,
      icon: Icons.lock,
      validatorFunction: validator.validatePasswordLength,
      hint: "Password",
    );
  }

  // Can Provide Pick And Drop
  Widget acceptTermsTextRow() {
    return Container(
      margin: EdgeInsets.only(top: _height / 100.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Checkbox(
              activeColor: Colors.red[300],
              value: checkBoxValue,
              onChanged: (bool newValue) {
                setState(() {
                  checkBoxValue = newValue;
                });
              }),
          Text(
            "Can Provide Pick And Drop",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: _large ? 12 : (_medium ? 11 : 10)),
          ),
        ],
      ),
    );
  }

  // SIGN UP
  Widget button() {
    return RaisedButton(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      onPressed: () {
        final isValid = _formKey.currentState.validate();
        if (!isValid) {
          return;
        }
        _formKey.currentState.save();
        print("Routing to your account");
      },
      textColor: Colors.white,
      padding: EdgeInsets.all(0.0),
      child: Container(
        alignment: Alignment.center,
//        height: _height / 20,
        width: _large ? _width / 4 : (_medium ? _width / 3.75 : _width / 3.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          gradient: LinearGradient(
            colors: <Color>[Colors.orange[200], Colors.pinkAccent],
          ),
        ),
        padding: const EdgeInsets.all(12.0),
        child: Text(
          'SIGN UP',
          style: TextStyle(fontSize: _large ? 14 : (_medium ? 12 : 10)),
        ),
      ),
    );
  }

  // OR CREATE USING SOCIAL MEDIA
  Widget infoTextRow() {
    return Container(
      margin: EdgeInsets.only(top: _height / 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Or create using social media",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: _large ? 12 : (_medium ? 11 : 10)),
          ),
        ],
      ),
    );
  }

  Widget socialIconsRow() {
    return Container(
      margin: EdgeInsets.only(top: _height / 80.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage("assets/images/googlelogo.png"),
          ),
          SizedBox(
            width: 20,
          ),
          CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage("assets/images/fblogo.jpg"),
          ),
          SizedBox(
            width: 20,
          ),
          CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage("assets/images/twitterlogo.jpg"),
          ),
        ],
      ),
    );
  }

  // ALREADY HAVE AN ACCOUNT
  Widget signInTextRow() {
    return Container(
      margin: EdgeInsets.only(top: _height / 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Already have an account?",
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
          SizedBox(
            width: 5,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
              print("Routing to Sign up screen");
            },
            child: Text(
              "Sign in",
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: Colors.red[400],
                  fontSize: 19),
            ),
          )
        ],
      ),
    );
  }
}
