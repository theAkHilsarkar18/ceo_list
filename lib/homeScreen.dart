import 'package:flutter/material.dart';

class CEO_List extends StatefulWidget {
  const CEO_List({Key? key}) : super(key: key);

  @override
  State<CEO_List> createState() => _CEO_ListState();
}

class _CEO_ListState extends State<CEO_List> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            evenBoxUI(),
            oddBoxUI(),
          ],
        ),
      ),
    );
  }

  Widget evenBoxUI() {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(colors: [
            Colors.greenAccent,
            Colors.green,
          ]),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 80,
                width: 80,
                decoration:  BoxDecoration(
                  //shape: BoxShape.circle,
                  border: Border.all(color: Colors.white,width: 2),
                  gradient: const LinearGradient(colors: [
                    Colors.cyanAccent,
                    Colors.cyan,
                  ],),
                ),
                child: Image.asset("assets/images/sundar.jpg",fit: BoxFit.cover),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Sundar Pichai",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "CEO Google",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2)),
                child: const Icon(Icons.navigate_next,
                    color: Colors.white, size: 25),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget oddBoxUI() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(colors: [
            Colors.tealAccent,
            Colors.teal,
          ]),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 80,
                width: 80,
                decoration:  BoxDecoration(
                  //shape: BoxShape.circle,
                  border: Border.all(color: Colors.white,width: 2),
                  gradient: const LinearGradient(colors: [
                    Colors.cyanAccent,
                    Colors.cyan,
                  ],),
                ),
                child: Image.asset("assets/images/sundar.jpg",fit: BoxFit.cover),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Sundar Pichai",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "CEO Google",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2)),
                child: const Icon(Icons.navigate_next,
                    color: Colors.white, size: 25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
