import 'package:flutter/material.dart';

class payments extends StatefulWidget {
  const payments({super.key});

  @override
  State<payments> createState() => _paymentsState();
}

class _paymentsState extends State<payments> {
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
              "المدفوعات",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
            ),
          ),
          Spacer(),
          Center(
            child: Text(
              "بمجرد حصولك على الحجز، يمكنك هنا متابعة\n مدفوعاتك واسترداد أموالك.",
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
