import 'package:flutter/material.dart';
import 'package:student/allvariables/allVar.dart';

class Onlineform extends StatefulWidget {
  const Onlineform({super.key});

  @override
  State<Onlineform> createState() => _OnlineformState();
}

class _OnlineformState extends State<Onlineform> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryBlue,
        title: Text(
          'Exam form',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          
          child: Column(
children: [
Padding(
  padding: const EdgeInsets.all(8.0),
  child: TextFormField(
decoration: InputDecoration(border: OutlineInputBorder(
borderRadius: BorderRadius.circular(15)

)),


  ),
),
Padding(
  padding: const EdgeInsets.all(8.0),
  child: TextFormField(
decoration: InputDecoration(border: OutlineInputBorder(
borderRadius: BorderRadius.circular(15)

)),


  ),
)

],

        ),),
      ),
    );
  }
}
