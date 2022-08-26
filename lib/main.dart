import 'package:flutter/material.dart';
import 'package:indicator_demo/SlideDots.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MynewHome(),
    );
  }
}

class MynewHome extends StatelessWidget {
  const MynewHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.bottomCenter,
        color: Colors.white,
        child: Row(
          mainAxisSize:
              MainAxisSize.min, //size of whole dots contains Container set here

          children: [for (int i = 0; i < 5; i++) SlideDots(true)],
        ),
      ),
    );
  }
}
