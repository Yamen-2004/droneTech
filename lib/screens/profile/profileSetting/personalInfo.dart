import 'package:drone_tech/ShortCutWidget/container.dart';
import 'package:flutter/material.dart ';

class personalInfo extends StatefulWidget {
  const personalInfo({super.key});

  @override
  State<personalInfo> createState() => _personalInfoState();
}

class _personalInfoState extends State<personalInfo> {
  @override
  Widget build(BuildContext) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back, size: 40)),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.topRight,
              child: Text(
                "المعلومات الشخصية",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            containerTile(text: "الأسم الكامل", text2: "ضياء حمدان البطوش"),
            containerTile(text: "الرقم الوطني", text2: "0000000000"),
            containerTile(text: "تاريخ الميلاد", text2: "1/1/1999"),
            containerTile(text: "الجنسية", text2: "أردني"),
            containerTile(text: "الجنس", text2: "ذكر"),
            containerTile(
                text: "البريد الإلكتروني", text2: "DroneTech@gmail.com"),
            containerTile(text: "رقم الهاتف", text2: "962+ 123456789"),
            containerTile(text: "العنوان", text2: "عمان"),
          ],
        ),
      ),
    );
  }
}
