import "package:drone_tech/ShortCutWidget/button.dart";
import "package:drone_tech/ShortCutWidget/txtfield.dart";
import "package:flutter/material.dart";

class password extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              Spacer(),
              Spacer(),
              Spacer(),
              Image.asset('assets/images/Logo.png'),
              SizedBox(
                height: 10,
              ),
              Text("DroneTech JO"),
              Spacer(),
              txtfield(hint: "كلمة المرور ", obscure: true),
              Spacer(),
              Spacer(),
              button(
                text: "التالي",
                onPressed: () {
                  Navigator.pushNamed(context, "/login");
                },
                color: Colors.black,
                colortxt: Colors.white,
              ),
              SizedBox(height: 10),
              button(
                text: "عودة",
                onPressed: () {
                  Navigator.pushNamed(context, "/login");
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
