import 'package:flutter/material.dart';
import 'package:student/allvariables/allVar.dart';

class LatestReports extends StatefulWidget {
  const LatestReports({super.key});

  @override
  State<LatestReports> createState() => _LatestReportsState();
}

class _LatestReportsState extends State<LatestReports> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryBlue,
        title: Text('Exam Results'),

      ),
      body: Center(child: Text('Exam Results')),
    );
  }
}