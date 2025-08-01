import 'package:flutter/material.dart';
import 'package:student/allvariables/allVar.dart';

class Onlineform extends StatelessWidget {
  const Onlineform({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  backgroundColor: primaryBlue,
  title: Text('Exam form',style: TextStyle(color: Colors.white),),
),
body: Center(
  child: Text('Exam Form'),
),
    );
  }
}