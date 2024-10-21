import 'package:drone_tech/ShortCutWidget/button.dart';
import 'package:drone_tech/ShortCutWidget/txtfield.dart';
import 'package:flutter/material.dart';

class SignUpTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              Spacer(),
              Image.asset('assets/images/Logo.png'),
              SizedBox(
                height: 10,
              ),
              Text("DroneTech JO"),
              Spacer(),
              txtfield(hint: "الأسم الرباعي", obscure: false),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: txtfield(hint: "الجنس", obscure: false),
                  ),
                  Expanded(
                    flex: 2,
                    child: txtfield(hint: "تاريخ الميلاد ", obscure: false),
                  ),
                ],
              ),
              Spacer(),
              button(
                text: "التالي",
                onPressed: () {
                  Navigator.pushNamed(context, "/password");
                },
                color: Colors.black,
                colortxt: Colors.white,
              ),
              SizedBox(height: 10),
              button(
                text: "عودة",
                onPressed: () {
                  Navigator.pushNamed(context, "/signup");
                },
                color: const Color.fromARGB(255, 196, 193, 193),
                colortxt: Colors.black,
              ),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
