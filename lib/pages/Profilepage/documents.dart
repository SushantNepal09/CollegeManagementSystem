import 'package:flutter/material.dart';
import 'package:student/allvariables/allVar.dart';
import 'package:student/pages/Profilepage/docscard.dart';

class Documents extends StatefulWidget {
  const Documents({super.key});

  @override
  State<Documents> createState() => _DocumentsState();
}

class _DocumentsState extends State<Documents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: primaryBlue,
          title: Text(
            'Documents',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
children: [
Padding(
  padding: const EdgeInsets.all(8.0),
  child: Text('Documents',style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0),fontSize: 20,fontWeight: FontWeight.w500,)),
),
Docscard(),

],


        ));
  }
}
