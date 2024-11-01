import 'package:drone_tech/ShortCutWidget/button.dart';
import 'package:drone_tech/ShortCutWidget/container.dart';
import 'package:flutter/material.dart';

class licenseRequest extends StatefulWidget {
  const licenseRequest({super.key});

  @override
  State<licenseRequest> createState() => _licenseRequestState();
}

class _licenseRequestState extends State<licenseRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back, size: 40)),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: const Text(
                    "طلب الترخيص",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
                  ),
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
                    """يرجى ملء جميع الحقول بدقة وتقديم المستندات المطلوبة، حيث سيتم مراجعة طلبك من قبل الجهات المعنية. تأكد من صحة المعلومات لتجنب رفض الطلب أو تأخير الإجراءات. تقديم بيانات غير صحيحة قد يؤدي إلى رفض الترخيص أو عقوبات قانوني.""",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: const Text(
                    "تحميل المستندات",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                containerTwo(
                    text: "قم بسمح هويتك", icon: const Icon(Icons.camera_alt)),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: const Text(
                    "تفاصيل الدرون",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                containerTwo(
                    text: "موديل الدرون",
                    icon: const Icon(Icons.airplanemode_active)),
                const SizedBox(
                  height: 20,
                ),
                containerTwo(
                    text: "الرقم التسلسلي", icon: const Icon(Icons.numbers)),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: const Text(
                    "غرض الاستخدام",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 20,
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
                const SizedBox(
                  height: 20,
                ),
                button(
                    text: "إرسال ",
                    onPressed: () {},
                    color: Colors.black,
                    colortxt: Colors.white),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
