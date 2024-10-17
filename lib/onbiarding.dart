// This file contains the onboarding screen of the app. It is the first screen that the user sees when they open the app for the first time.
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:drone_tech/data/onboradingData.dart';

class onBoarding extends StatefulWidget {
  @override
  _onBoarding createState() => _onBoarding();
}

class _onBoarding extends State<onBoarding> {
  int index1 = 0;
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          margin: const EdgeInsets.only(top: 50),
          alignment: Alignment.center,
          child: Stack(children: [
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Container(
                            height: 25,
                            width: 30,
                            color: Colors.grey,
                            child: TextButton(
                                onPressed: () {
                                  //convert to english
                                },
                                child: const Text(
                                  "EN",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                          Container(
                            height: 25,
                            width: 30,
                            color: Colors.grey,
                            child: TextButton(
                                onPressed: () {
                                  //convert to arabic
                                },
                                child: const Text(
                                  "AR",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                )),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Image.asset("assets/images/onboard.png"),
            PageView.builder(
              controller: controller,
              itemCount: onboardingData().Data['onboarding'].length,
              itemBuilder: (context, index1) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 230,
                      width: 100,
                      child: Image.asset(
                        onboardingData().Data['onboarding'][index1]['image'],
                      ),
                    ),
                    Text(
                      onboardingData().Data['onboarding'][index1]['title'],
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.bottomLeft,
                          child: TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/login');
                              },
                              child: const Text(
                                "تخطي",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                        Spacer(),
                        Container(
                          alignment: Alignment.bottomRight,
                          child: IconButton(
                            onPressed: () {
                              if (index1 == 3) {
                                Navigator.pushNamed(context, '/login');
                              } else {
                                controller.animateToPage(index1 + 1,
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.easeIn);
                              }
                            },
                            icon: const Icon(Icons.arrow_forward),
                            color: Colors.black,
                            iconSize: 30,
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ]),
        ));
  }
}
