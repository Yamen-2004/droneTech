import 'package:drone_tech/onbiarding.dart';
import 'package:drone_tech/screens/SignUp_in/SignUpTwo.dart';
import 'package:drone_tech/screens/SignUp_in/login.dart';
import 'package:drone_tech/screens/SignUp_in/password.dart';
import 'package:drone_tech/screens/SignUp_in/signUp.dart';
import 'package:drone_tech/screens/home.dart';
import 'package:drone_tech/screens/profile/profile.dart';
import 'package:drone_tech/screens/profile/profileSetting/licenseRequest.dart';
import 'package:drone_tech/screens/profile/profileSetting/loginSecurity.dart';
import 'package:drone_tech/screens/profile/profileSetting/notifications.dart';
import 'package:drone_tech/screens/profile/profileSetting/payments.dart';
import 'package:drone_tech/screens/profile/profileSetting/personalInfo.dart';
import 'package:drone_tech/screens/profile/profileSupport/feedback.dart';
import 'package:drone_tech/screens/profile/profileSupport/support.dart';
import 'package:drone_tech/screens/showData.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const droneTech());
}

// ignore: camel_case_types
class droneTech extends StatelessWidget {
  const droneTech({super.key});

  @override
  Widget build(BuildContext) {
    return MaterialApp(
      routes: {
        '/': (context) => onBoarding(),
        "/login": (context) => login(),
        "/signup": (context) => signup(),
        "/signup2": (context) => SignUpTwo(),
        "/password": (context) => password(),
        "/home": (context) => const home(),
        "/showData": (context) => showDroneData(),
        "/profile": (context) => const profile(),
        "/personalInfo": (context) => personalInfo(),
        "/licenseRequest": (context) => licenseRequest(),
        "/loginSecurity": (context) => loginSecurity(),
        "/payments": (context) => payments(),
        "/notifications": (context) => notifications(),
        "/support": (context) => support(),
        "/feedback": (context) => feedback(),
      },
    );
  }
}
