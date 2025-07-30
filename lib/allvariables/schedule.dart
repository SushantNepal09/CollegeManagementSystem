import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class calendarschedule {
  final dynamic title;
  final dynamic subtitle;
  final dynamic icon;

  calendarschedule(
      {required this.title, required this.subtitle, required this.icon});
}

List<calendarschedule> Schedule = [
calendarschedule(title: 'Holiday Notice', subtitle: 'Holiday on Monday Due to Loshar', icon: Icon(Icons.celebration)),
calendarschedule(title: 'Exam Schedule', subtitle: 'MidTerm Exam', icon: Icon(Icons.book)),
calendarschedule(title: 'Class Suspension', subtitle: 'No Classes Due to Event', icon: Icon(Icons.cancel)),
calendarschedule(title: 'Parent Meeting', subtitle: 'Meeting on Friday at 10 AM', icon: Icon(Icons.group)),
calendarschedule(title: 'Result Day', subtitle: 'Results Published Online', icon: Icon(Icons.assessment)),
calendarschedule(title: 'Workshop Alert', subtitle: 'Flutter Workshop on Monday', icon: Icon(Icons.computer)),
calendarschedule(title: 'New Semester Start', subtitle: 'Classes Resume from Aug 10', icon: Icon(Icons.school)),




];
