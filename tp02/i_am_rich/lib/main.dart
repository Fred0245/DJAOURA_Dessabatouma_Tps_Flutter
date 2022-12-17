import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: const Color(0XFF393e41),
          appBar: AppBar(
            backgroundColor: const Color(0XFF5c415d),
            title: const Text("I Am Rich"),
            centerTitle: true,
          ),
          body: const Center(
              child: Image(image: AssetImage("images/diamond.png"))),
        ));
  }
}
