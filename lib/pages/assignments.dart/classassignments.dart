import 'package:flutter/material.dart';
import 'package:student/allvariables/allVar.dart';

class Classassignments extends StatelessWidget {
  const Classassignments({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  title:Center(child: Text("Class Assignments",style: TextStyle(color: Colors.white),)),
backgroundColor: primaryBlue,
),
    );
  }
}