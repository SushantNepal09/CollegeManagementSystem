import 'package:flutter/material.dart';

class Pnotes {
  final String SubName;
  final String Topic;
  final String Date;

  Pnotes({required this.SubName, required this.Topic, required this.Date});
}

List<Pnotes> allpnotes =
[
Pnotes(SubName: "C++", Topic: "Polymorphism practical", Date: "2023-12-11"),
Pnotes(SubName: "C", Topic: "Loop practical", Date: "2023-1-11"),
Pnotes(SubName: "DAA", Topic: "Heap Sort", Date: "2023-4-11"),
Pnotes(SubName: "Microprocessor", Topic: "Addition using assembly", Date: "2023-11-11"),
Pnotes(SubName: "Digital Logic", Topic: "NAND & NOR Gates", Date: "2023-3-11"),
Pnotes(SubName: "Web Development", Topic: "Javascript practical", Date: "2023-2-11"),



];
