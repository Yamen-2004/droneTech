import "package:drone_tech/data/dronInfo.dart";
import "package:flutter/material.dart";

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List routes = [
    "/drone1",
    "/drone2",
    "/drone3",
    "/drone4",
    "/drone5",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 120,
          backgroundColor: Colors.white,
          leading: Column(
            children: [
              const Spacer(),
              GestureDetector(
                child: Image.asset("assets/images/profile.png"),
                onTap: () {
                  Navigator.pushNamed(context, "/profile");
                },
              ),
              const Text("الملف الشخصي",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
            ],
          ),
          actions: [
            Row(
              children: [
                Image.asset(
                  "assets/images/appbar.png",
                  height: 100,
                ),
              ],
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(17),
          child: ListView.builder(
              itemCount: droneInfo().data.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: GestureDetector(
                          onTap: () =>
                              Navigator.pushNamed(context, routes[index]),
                          child: Image.asset(
                              droneInfo().data[index]["images"][0])),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        droneInfo().data[index]["name"],
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        alignment: Alignment.topRight,
                        child: Text(
                          droneInfo().data[index]["description"],
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                              
                        )),
                        SizedBox(height: 10,),
                  
                  ],
                );
              }),
        ));
  }
}