import 'package:flutter/material.dart';

class Firsttab extends StatefulWidget {
  const Firsttab({super.key});

  @override
  State<Firsttab> createState() => _FirsttabState();
}

class _FirsttabState extends State<Firsttab> {
  @override
  Widget build(BuildContext context) {
    return  Container(
       decoration: BoxDecoration(
        
       ),
        child: Text("Hello Home"),
      );
  }
}