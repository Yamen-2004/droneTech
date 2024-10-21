import 'package:drone_tech/ShortCutWidget/button.dart';
import 'package:drone_tech/ShortCutWidget/txtfield.dart';
import 'package:flutter/material.dart';

class login extends StatelessWidget {
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
              txtfield(hint: "الرقم الوطني", obscure: false),
              txtfield(hint: "كلمة المرور", obscure: true),
              Container(
                  margin: EdgeInsets.only(left: 25),
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                      onPressed: () {
                        // navigate to forget password
                      },
                      child: Text(
                        "نسيت كلمة المرور؟",
                        style: TextStyle(color: Colors.black),
                      ))),
              Spacer(),
              button(
                text: "تسجيل الدخول",
                onPressed: () {
                  Navigator.pushNamed(context, "/home");
                },
                color: Colors.black,
                colortxt: Colors.white,
              ),
              SizedBox(height: 10),
              button(
                text: "تسجيل حساب جديد",
                onPressed: () {
                  Navigator.pushNamed(context, "/signup");
                },
                color:const Color.fromARGB(255, 196, 193, 193),
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
