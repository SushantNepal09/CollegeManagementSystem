import 'package:flutter/material.dart';

class Eduinfo extends StatefulWidget {
  const Eduinfo({super.key});

  @override
  State<Eduinfo> createState() => _EduinfoState();
}

class _EduinfoState extends State<Eduinfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Education Info'),
      ),
      
      body: Text('Education'),);
  }
}