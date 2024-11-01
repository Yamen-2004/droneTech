import "package:drone_tech/ShortCutWidget/container.dart";
import "package:flutter/material.dart";

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back, size: 40)),
                    const Text(
                      "الملف الشخصي",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/notifications");
                        },
                        icon: const Icon(Icons.notifications, size: 40)),
                  ],
                ),
                const SizedBox(height: 20),
                const CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage("assets/images/profile.png"),
                ),
                const SizedBox(height: 20),
                const Text(
                  "ضياء حمدان البطوش ",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 0.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.centerRight,
                  child: const Text("الأعدادات",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w500,
                      )),
                ),
                const SizedBox(height: 20),
                container(
                    text: "المعلومات الشخصية",
                    icon: Icons.person,
                    onPressed: () {
                      Navigator.pushNamed(context, "/personalInfo");
                    }),
                container(
                    text: "طلب الترخيص",
                    icon: Icons.assignment_add,
                    onPressed: () {
                      Navigator.pushNamed(context, "/licenseRequest");
                    }),
                container(
                    text: "تسجيل الدخول والأمان",
                    icon: Icons.lock,
                    onPressed: () {
                      Navigator.pushNamed(context, "/loginSecurity");
                    }),
                container(
                    text: "المدفوعات",
                    icon: Icons.payment,
                    onPressed: () {
                      Navigator.pushNamed(context, "/payments");
                    }),
                container(
                    text: "الأشعارات",
                    icon: Icons.notifications,
                    onPressed: () {
                      Navigator.pushNamed(context, "/notifications");
                    }),
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: const Text("الدعم ",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w500,
                      )),
                ),
                container(
                    text: "الدعم والمساعدة",
                    icon: Icons.help,
                    onPressed: () {
                      Navigator.pushNamed(context, "/support");
                    }),
                container(
                    text: "أعطنا رأيك",
                    icon: Icons.feedback,
                    onPressed: () {
                      Navigator.pushNamed(context, "/feedback");
                    }),
                container(
                    text: "تسجيل الخروج",
                    icon: Icons.logout,
                    onPressed: () {
                      Navigator.pushNamed(context, "/login");
                    }),
              ],
            )
          ],
        ),
      ),
    );
  }
}
