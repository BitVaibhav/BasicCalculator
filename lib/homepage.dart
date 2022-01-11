// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, ans = 0;

  final TextEditingController t1 = TextEditingController(text: "0");
  final TextEditingController t2 = TextEditingController(text: "0");

  void add() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      ans = num1 + num2;
    });
  }

  void sub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      ans = num1 - num2;
    });
  }

  void mul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      ans = num1 * num2;
    });
  }

  void div() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      ans = num1 ~/ num2;
    });
  }

  void clear() {
    setState(() {
      t1.text = "";
      t2.text = "";
      ans = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(child: Text("Calculator")),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomLeft,
                colors: [
              Color(0xff355C7D),
              Color(0xff6C5B7B),
              Color(0xffC06C84)
            ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Output : $ans",
              style: TextStyle(fontSize: 22, color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    hintText: "Number 1", ),
                controller: t1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(hintText: "Number 2"),
                controller: t2,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonBar(
                  children: [
                    ElevatedButton(child: Text("+"), onPressed: add),
                    ElevatedButton(child: Text("-"), onPressed: sub),
                    ElevatedButton(child: Text("x"), onPressed: mul),
                    ElevatedButton(child: Text("/"), onPressed: div),
                    ElevatedButton(child: Text("Clr"), onPressed: clear)
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
