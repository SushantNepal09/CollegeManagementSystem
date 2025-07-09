import 'package:flutter/material.dart';
import 'package:student/allvariables/notificlist.dart';

class Square extends StatelessWidget {
  final String child;

  const Square({super.key,required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 50,
        width: 200,
        color: Colors.red,
        child: Center(child: Text(child,style: TextStyle(fontSize: 30,color: Colors.red),)),
      ),
    );
  }
}
