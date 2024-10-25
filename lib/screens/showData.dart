import 'package:flutter/material.dart';

class showDroneData extends StatefulWidget {
  @override
  _showDroneDataState createState() => _showDroneDataState();
}

class _showDroneDataState extends State<showDroneData> {
  var arg;

  @override
  Widget build(BuildContext context) {
    arg = ModalRoute.of(context)?.settings.arguments;
    print(arg);
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(17),
        child: ListView(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              arg["images"][0],
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Image.asset(
                  arg["images"][1],
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  arg["images"][2],
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  arg["images"][3],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              arg["name"],
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              arg["dron description"],
              textDirection: TextDirection.rtl,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.centerRight,
              child: const Text(
                "غرض الاستخدام ",
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              child: const Row(
                textDirection: TextDirection.rtl,
                children: [
                  Icon(
                    Icons.location_on,
                    fill: 0.1,
                    size: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    " المواقع المستهدفة ",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 40,
              alignment: Alignment.centerRight,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                textDirection: TextDirection.rtl,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  const Text("الرجاء الاختيار",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      )),
                  Spacer(),
                  IconButton(
                      onPressed: () {
                        print("clicked");
                      },
                      icon: const Icon(Icons.arrow_drop_down))
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.centerRight,
              child: const Text(
                "وصف الغرض  ",
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Container(
              height: 150,
              alignment: Alignment.centerRight,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const TextField(
                textDirection: TextDirection.rtl,
                maxLines: 6,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 150,
              alignment: Alignment.centerRight,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
                color: Colors.grey[200],
                border: Border.all(
                  color: Colors.red,
                  width: 1,
                ),
              ),
              child: const Text(
                """يرجى كتابة سبب حجز الدرون في الخانة المخصصة بدقة، حيث سيتم مراجعة السبب بعناية من قبل الجهات المختصة. تأكد من صحة المعلومات قبل إتمام الحجز، حيث قد يؤدي السبب غير الدقيق أو المخالف للقوانين إلى رفض الحجز أو التعرض للعقوبات. المزيد من التفاصيل""",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 50, vertical: 10)),
                ),
                child: Text("حجز"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
