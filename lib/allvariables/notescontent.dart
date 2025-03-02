import 'package:flutter/material.dart';

class Notes {
  final String SubName;
  final String Topic;
  final String Date;

  Notes(
      {required this.SubName,
      required this.Topic
      ,
      required this.Date}); //this is a constructor which passes the value where ever it is called
}

List<Notes> allNotes = //here we are creating multiple objects
    [
  Notes(SubName: "Physics", Topic: "Thermodynamics I",Date:"2025-01-02" ,),
  Notes(SubName: "Chemistry", Topic: "Organic Chemistry II",Date: "2025-01-03"),
   Notes(SubName: "Math", Topic: "Calculas",Date: "2025-01-03"),
    Notes(SubName: "C", Topic: "Loop",Date: "2025-01-03"),
     Notes(SubName: "Microprocessor", Topic: "8085 Processor",Date: "2025-01-03"),
      Notes(SubName: "Web Technology", Topic: "Css",Date: "2025-01-03"),
];
