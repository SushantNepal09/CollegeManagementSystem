import 'package:flutter/material.dart';

class Thirdtab extends StatefulWidget {
  const Thirdtab({super.key});

  @override
  State<Thirdtab> createState() => _ThirdtabState();
}

class _ThirdtabState extends State<Thirdtab> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
body: Column(

  children: [
Padding(
  padding: const EdgeInsets.all(8.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Icon(Icons.calendar_month_rounded,color: Colors.blueAccent,size: 22),
      SizedBox(width: 5,),
      Text('Exam Schedule',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700),)
    ],
  ),
),



  ],
),

    );
  }
}