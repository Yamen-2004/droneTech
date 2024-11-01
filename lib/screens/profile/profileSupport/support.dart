import 'package:flutter/material.dart';

class support extends StatefulWidget {
  const support({super.key});

  @override
  State<support> createState() => _support();
}

class _support extends State<support> {
  @override
  Widget build(BuildContext) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(children: [
          Container(
            alignment: Alignment.topLeft,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back, size: 40),
            ),
          ),
          Container(
            alignment: Alignment.topRight,
            child: const Text(
              "الأشعارات",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            height: 760,
            child: Center(
              child: Image.asset(
                "assets/images/support.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
