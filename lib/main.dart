import 'package:drone_tech/onbiarding.dart';
import 'package:drone_tech/screens/login.dart';
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
      },
    );
  }
}