import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 6;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0XFF7B1FA2),
        appBar: AppBar(
          title: const Text("Jeu De Dé"),
          centerTitle: true,
          backgroundColor: const Color(0XFF7B1FA2),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextButton(
                      onPressed: () {
                        changeDiceFace();
                      },
                      child: Image(
                          image: AssetImage('images/dice$leftDiceNumber.png'))),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextButton(
                      onPressed: () {
                        changeDiceFace();
                      },
                      child: Image(
                          image:
                              AssetImage('images/dice$rightDiceNumber.png'))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
