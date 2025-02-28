import 'package:flutter/material.dart';
import 'package:student/allvariables/allVar.dart';

class Exams extends StatelessWidget {
  const Exams({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  title:Center(child: Text("Exams",style: TextStyle(color: Colors.white),)),
backgroundColor: primaryBlue,
),
    );
  }
}