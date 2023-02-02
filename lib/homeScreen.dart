import 'package:flutter/material.dart';

class CEO_List extends StatefulWidget {
  const CEO_List({Key? key}) : super(key: key);

  @override
  State<CEO_List> createState() => _CEO_ListState();
}

class _CEO_ListState extends State<CEO_List> {
  List ceoName = [
    "Sundar Pichai",
    "Bill Gates",
    "Jeff Bezos",
    "Mukesh Ambani",
    "Tim Cook",
    "Shantanu Narayan",
    "Daniel Zhang",
    "Harald Kruger",
    "Michael Dell",
    "Bob Swan"
  ];
  List companyName = [
    "GOOGLE",
    "MICROSOFT",
    "AMAZON",
    "RELIANCE LTD.",
    "APPLE",
    "ADOBE",
    "ALIBABA",
    "BMW",
    "Dell",
    "INTEL"
  ];
  List ceoImg = [
    "assets/images/sundar.jpg",
    "assets/images/bill.jpg",
    "assets/images/jef.jpg",
    "assets/images/mukesh.jpg",
    "assets/images/cook.jpg",
    "assets/images/adobe.jpg",
    "assets/images/alibaba.jpg",
    "assets/images/bmw.jpg",
    "assets/images/dell.jpg",
    "assets/images/bob.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                transform: GradientRotation(1),
                colors: [Colors.blue, Colors.blue.shade900, Colors.purple.shade800],
              ),
            ),
          ),
          ListView.builder(
            itemBuilder: (context, index) => boxUI(
                ceoName[index],
                companyName[index],
                ceoImg[index],
                index % 2 == 0 ? Colors.white38 : Colors.black38,
                index % 2 == 1 ? Colors.white70 : Colors.black),
            itemCount: ceoName.length,
          ),
        ],
      )),
    );
  }

  Widget boxUI(
      String ceoName, String companyName, String imgPath, Color c1, Color c2) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: c1,
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage("$imgPath"),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                Text(
                  "${ceoName}",
                  style: TextStyle(
                    color: c2,
                    fontSize: 10,
                    letterSpacing: 1,
                    wordSpacing: 2,
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "${companyName}",
                  style: TextStyle(
                    color: c2,
                    fontSize: 7,
                    letterSpacing: 1,
                    wordSpacing: 2,
                  ),
                ),
                Spacer(),
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Container(
                alignment: Alignment.center,
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white54, width: 1),
                ),
                child:
                    Icon(Icons.navigate_next, color: Colors.white60, size: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
