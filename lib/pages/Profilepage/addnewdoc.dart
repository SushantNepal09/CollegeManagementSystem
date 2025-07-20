import 'package:flutter/material.dart';
import 'package:student/allvariables/allVar.dart';

class NewDoc extends StatefulWidget {
  const NewDoc({super.key});

  @override
  State<NewDoc> createState() => _NewDocState();
}

class _NewDocState extends State<NewDoc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
backgroundColor: primaryBlue,
  title: Text('Add New Documents',style: TextStyle(color: Colors.white),),
),
body: Center(child: Text('Hello',selectionColor: Colors.amber,)),
    );
  }
}