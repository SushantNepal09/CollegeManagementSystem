import 'package:flutter/material.dart';

class Secondtab extends StatefulWidget {
  const Secondtab({super.key});

  @override
  State<Secondtab> createState() => _SecondtabState();
}

class _SecondtabState extends State<Secondtab> {
  @override
  Widget build(BuildContext context) {
    return  Container(
        color: Colors.greenAccent,
        child: Text("Hello Setting"),
      );
  }
}