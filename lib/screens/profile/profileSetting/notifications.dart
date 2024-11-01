import 'package:flutter/material.dart';

class notifications extends StatefulWidget {
  const notifications({super.key});

  @override
  State<notifications> createState() => _notifications();
}

class _notifications extends State<notifications> {
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
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
            ),
          ),
          Spacer(),
          Center(
            child: Text(
              "لا يوجد اشعارات",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
          ),
          Spacer(),
        ]),
      ),
    );
  }
}
