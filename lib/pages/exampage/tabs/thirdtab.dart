import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Thirdtab extends StatefulWidget {
  const Thirdtab({super.key});

  @override
  State<Thirdtab> createState() => _ThirdtabState();
}

class _ThirdtabState extends State<Thirdtab> {
 dynamic today = DateTime.now();

  void _ondayselected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.calendar_month_rounded,
                    color: Colors.blueAccent, size: 22),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Exam Schedule',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Expanded(
              child: TableCalendar(
                  calendarFormat: CalendarFormat.month,
                  availableGestures: AvailableGestures.all,
                  rowHeight: 50,
                  selectedDayPredicate: (day) => isSameDay(day, today),
                  onDaySelected: _ondayselected,
                  focusedDay: today,
                  firstDay: DateTime.utc(2020, 01, 01),
                  lastDay: DateTime.utc(2030, 12, 30)))
        ],
      ),
    );
  }
}
