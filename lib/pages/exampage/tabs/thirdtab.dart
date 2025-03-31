import 'package:flutter/material.dart';

class Thirdtab extends StatefulWidget {
  const Thirdtab({super.key});

  @override
  State<Thirdtab> createState() => _ThirdtabState();
}

class _ThirdtabState extends State<Thirdtab> {
  @override
  Widget build(BuildContext context) {
    return    Container(
        color: Colors.lightBlueAccent,
        child: Text("Hello Help"),
      );
  }
}