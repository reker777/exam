import 'package:flutter/material.dart';

class Exam2 extends StatefulWidget {
  const Exam2({super.key});

  @override
  State<Exam2> createState() => _Exam2State();
}

class _Exam2State extends State<Exam2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Container(
            height: 1000,
            width: 1000,
            child: Text("Rose Flower bouquet price  24 dollars ")
          )
        ],
      )
    );
  }
}
