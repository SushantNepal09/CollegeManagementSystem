import 'package:flutter/material.dart';

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
title: Text('Documents'),

      ),
      
      
      body: Text('Documents'),);
  }
}