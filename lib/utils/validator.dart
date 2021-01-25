class Validator {
  // Name Validator
  String validateName(String value) {
    String pattern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "Name is Required";
    } else if (!regExp.hasMatch(value)) {
      return "Name must be a-z and A-Z";
    }
    return null;
  }

  // Gender Validator
  String validateGender(String value) {
    String pattern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "Gender is Required";
    } else if (!regExp.hasMatch(value)) {
      return "Gender must be a-z and A-Z";
    }
    return null;
  }

  // Gender Validator
  String validateHospitalName(String value) {
    String pattern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "Hospital Name is Required";
    } else if (!regExp.hasMatch(value)) {
      return "Hospital Name must be a-z and A-Z";
    }
    return null;
  }

  // Designation Validator
  String validateDesignation(String value) {
    String pattern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "Designation is Required";
    } else if (!regExp.hasMatch(value)) {
      return "Desgination must be a-z and A-Z";
    }
    return null;
  }

  // Address Validator
  String validateAddress(String value) {
    if (value.length == 0) {
      return "Address is Required";
    }
    return null;
  }

  // Blood Group Validator
  String validateBloodGroup(String value) {
    if (value.length == 0) {
      return "Blood Group is Required";
    }
    return null;
  }

  // Blood Group Validator
  String validatePatientCondition(String value) {
    if (value.length == 0) {
      return "Patient Condition is Required";
    }
    return null;
  }

  // Mobile Number Validator
  String validateMobile(String value) {
    String pattern = r'(^[0-9]*$)';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "Mobile is Required";
    } else if (value.length != 10) {
      return "Mobile number must 10 digits";
    } else if (!regExp.hasMatch(value)) {
      return "Mobile Number must be digits";
    }
    return null;
  }

  // Registration Number Validator
  String validateRegistrationNum(String value) {
    String pattern = r'(^[0-9]*$)';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "Registration Number is Required";
    } else if (!regExp.hasMatch(value)) {
      return "Registration Number must be digits";
    }
    return null;
  }

  // Age Validator
  String validateAge(String value) {
    String pattern = r'(^[0-9]*$)';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "Age is Required";
    } else if (!regExp.hasMatch(value)) {
      return "Age must be digits";
    }
    return null;
  }

  // Password Validator
  String validatePasswordLength(String value) {
    if (value.length == 0) {
      return "Password can't be empty";
    } else if (value.length < 10) {
      return "Password must be longer than 10 characters";
    }
    return null;
  }

  // Email Validator
  String validateEmail(String value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "Email is Required";
    } else if (!regExp.hasMatch(value)) {
      return "Invalid Email";
    } else {
      return null;
    }
  }
}
