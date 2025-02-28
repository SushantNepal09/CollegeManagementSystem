import 'package:flutter/material.dart';
import 'package:student/allvariables/allVar.dart';

class Theory extends StatelessWidget {
  const Theory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
title:Center(child: Text("Theory Notes",style: TextStyle(color: Colors.white),)),
backgroundColor: primaryBlue,

),

    );
  }
}