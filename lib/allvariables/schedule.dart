import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class calendarschedule {
  final dynamic title;
  final dynamic subtitle;
  final dynamic icon;
  final DateTime date;

  calendarschedule(
      {required this.title, required this.subtitle, required this.icon,required this.date});
}

List<calendarschedule> schedule = [
  calendarschedule(
      title: 'Holiday Notice',
      subtitle: 'Holiday on Monday Due to Loshar',
      icon: Icon(Icons.celebration),
      date: DateTime.utc(2025, 8, 4)
     
      
      
      ),
  calendarschedule(
      title: 'Exam Schedule', subtitle: 'MidTerm Exam', icon: Icon(Icons.book),
      date: DateTime.utc(2025, 8, 4)),
  calendarschedule(
      title: 'Class Suspension',
      subtitle: 'No Classes Due to Event',
      icon: Icon(Icons.cancel),
      date: DateTime.utc(2025, 8, 24)),
  calendarschedule(
      title: 'Parent Meeting',
      subtitle: 'Meeting on Friday at 10 AM',
      icon: Icon(Icons.group),
      date: DateTime.utc(2025, 8, 14)),
  calendarschedule(
      title: 'Result Day',
      subtitle: 'Results Published Online',
      icon: Icon(Icons.assessment),
      date: DateTime.utc(2025, 8, 11)),
  calendarschedule(
      title: 'Workshop Alert',
      subtitle: 'Flutter Workshop on Monday',
      icon: Icon(Icons.computer),
      date: DateTime.utc(2025, 8, 12)),
  calendarschedule(
      title: 'New Semester Start',
      subtitle: 'Classes Resume from Aug 10',
      icon: Icon(Icons.school),
      date: DateTime.utc(2025, 8, 5)),
  calendarschedule(
      title: 'Exam Schedule', subtitle: 'FinalTerm Exam', icon: Icon(Icons.book),
      date: DateTime.utc(2025, 8, 5)),
        calendarschedule(
      title: 'Exam Schedule', subtitle: 'MidTerm Exam', icon: Icon(Icons.book),
      date: DateTime.utc(2025, 8, 30)),
];
