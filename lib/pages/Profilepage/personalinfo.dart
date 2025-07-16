import 'package:flutter/material.dart';
import 'package:student/allvariables/allVar.dart';

class Personalinfo extends StatefulWidget {
  const Personalinfo({super.key});

  @override
  State<Personalinfo> createState() => _PersonalinfoState();
}

class _PersonalinfoState extends State<Personalinfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
backgroundColor: primaryBlue,

title: Text('Hello',style: TextStyle(color: Colors.white),),

),

body: Column(
children: [
CircleAvatar(
  child: ClipOval(
child: Image.asset('assets/profile'),

  ),
)

],

)
    
    );
  }
}