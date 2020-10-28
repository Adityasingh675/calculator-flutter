import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var num1 = 0,num2 = 0,sum = 0;

  final TextEditingController t1 = TextEditingController(text: "0");
  final TextEditingController t2 = TextEditingController(text: "0");

  void addition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }
  void subtraction() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }
  void multiplication() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }
  void division() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }
  void clear() {
    setState(() {
      t1.text = "0";
      t2.text = "0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Output : $sum",
              style: TextStyle(fontSize: 20.0, color: Colors.deepPurpleAccent, fontWeight: FontWeight.w700),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter num1"),
              controller: t1,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter num2"),
              controller: t2,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  color: Colors.deepPurple,
                  child: Text("+"),
                  onPressed: addition,
                ),
                MaterialButton(
                  color: Colors.deepPurple,
                  child: Text("-"),
                  onPressed: subtraction,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  color: Colors.deepPurple,
                  child: Text("*"),
                  onPressed: multiplication,
                ),
                MaterialButton(
                  color: Colors.deepPurple,
                  child: Text("/"),
                  onPressed: division,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  child: Text("Clear"),
                  color: Colors.deepPurple,
                  onPressed: clear,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
