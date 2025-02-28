import 'package:flutter/material.dart';
import 'package:student/allvariables/allVar.dart';

class Practical
 extends StatelessWidget {
  const Practical
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title:Center(child: Text("Practical Notes",style: TextStyle(color: Colors.white),)),
backgroundColor: primaryBlue,
),

    );
  }
}