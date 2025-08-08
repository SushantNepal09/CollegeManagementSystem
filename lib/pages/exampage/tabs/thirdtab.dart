import 'package:flutter/material.dart';
import 'package:student/allvariables/allVar.dart';
import 'package:student/allvariables/schedule.dart';
import 'package:table_calendar/table_calendar.dart';

class Thirdtab extends StatefulWidget {
  const Thirdtab({super.key});

  @override
  State<Thirdtab> createState() => _ThirdtabState();
}

class _ThirdtabState extends State<Thirdtab> {
  String _formatDate(DateTime date) {
  return '${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}';
}
  final Map<DateTime, List<calendarschedule>> _eventMap = {};

  @override
  void initState() {
    super.initState();
    // _events = {};
    for (var event in schedule) {
      final date =
          DateTime.utc(event.date.year, event.date.month, event.date.day);
      if (_eventMap[date] == null) {
        _eventMap[date] = [event];
      } else {
        _eventMap[date]!.add(event);
      }
    }
  }

  DateTime? _selectedDay;

  dynamic today = DateTime.now();
  // Map<DateTime, List<dynamic>> events;

  CalendarFormat _calendarFormat = CalendarFormat.month;

  bool change = true;

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
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),

                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Colors.grey,
                    //     blurRadius: 8,
                    //     offset: Offset(0, 4),
                    //   ),
                    // ],

                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.15),
                        blurRadius: 2.6,
                        spreadRadius: 0,
                        offset: Offset(
                          1.95,
                          1.95,
                        ),
                      ),
                    ]),
                child: TableCalendar(
                  firstDay: DateTime.utc(2020, 01, 01),
                  lastDay: DateTime.utc(2030, 12, 30),
                  focusedDay: today,
                  formatAnimationCurve:
                      !change ? Curves.easeOut : Curves.easeIn,
                  formatAnimationDuration: !change
                      ? Duration(seconds: 2)
                      : Duration(milliseconds: 1200),
                  onFormatChanged: (format) => {
                    if (_calendarFormat != format)
                      {
                        setState(() {
                          _calendarFormat = format;
                          change = !change;
                        }),
                      }
                  },
                  calendarFormat: _calendarFormat,
                  selectedDayPredicate: (day) => isSameDay(day, today),
                  eventLoader: (day) {
                    return _eventMap[
                            DateTime.utc(day.year, day.month, day.day)] ??
                        [];
                  },
                  onDaySelected: (selectedDay, DateTime focusedDay) {
                    setState(() {
                      _selectedDay = selectedDay;
                      today = focusedDay;
                    });
                  },
                  availableGestures: AvailableGestures.all,
                  calendarBuilders: CalendarBuilders(
                      defaultBuilder: (context, day, focusedDay) {
                    final normalizedDay =
                        DateTime.utc(day.year, day.month, day.day);
                    final hasEvent = _eventMap.containsKey(normalizedDay);

                    if (hasEvent) {
                      return Container(
                        margin: const EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            // borderRadius: BorderRadius.circular(25)

                            // background color for event days
                            shape: BoxShape.circle,
                            ),
                        alignment: Alignment.center,
                        child: Text(
                          '${day.day}',
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      );
                    }

                    return null; // fallback to default
                  }, markerBuilder: (context, day, events) {
                    return const SizedBox.shrink();
                  }),
                  rowHeight: 48,
                  daysOfWeekHeight: 32,
                  headerStyle: HeaderStyle(
                    titleCentered: true,
                    formatButtonVisible: true,
                    titleTextStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(16)),
                    ),
                    leftChevronIcon:
                        Icon(Icons.chevron_left, color: Colors.white),
                    rightChevronIcon:
                        Icon(Icons.chevron_right, color: Colors.white),
                  ),
                  calendarStyle: CalendarStyle(
                    todayDecoration: BoxDecoration(
                      color: Colors.orange,
                      shape: BoxShape.circle,
                    ),
                    selectedDecoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      shape: BoxShape.circle,
                    ),
                    defaultTextStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                    weekendTextStyle: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w600,
                    ),
                    holidayTextStyle: TextStyle(
                      color: Colors.red,
                    ),
                    selectedTextStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    todayTextStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    outsideDaysVisible: false,
                  ),
                  weekendDays: const [DateTime.saturday],
                  daysOfWeekStyle: DaysOfWeekStyle(
                    weekdayStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800],
                    ),
                    weekendStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  holidayPredicate: (day) => false,
                ),
              ),
            ),
          ),
          Text(
            'Event Lists',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
          ),

// Expanded(child:
// ListView(
// children: _getEventsForDay(_selectedDay?? today).map((event)=> ListTile(
// title: Text(event),
// )
// ).toList(),

// ))

          Expanded(
            child: ListView.builder(
                itemCount: _eventMap[DateTime.utc(
                      (_selectedDay ?? today).year,
                      (_selectedDay ?? today).month,
                      (_selectedDay ?? today).day,
                    )]
                        ?.length ??
                    0,
                itemBuilder: (context, index) {
                  final eventsForDay = _eventMap[DateTime.utc(
                    (_selectedDay ?? today).year,
                    (_selectedDay ?? today).month,
                    (_selectedDay ?? today).day,
                  )]!;
                  final schedule = eventsForDay[index];

                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
// height: 70,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.24),
                              blurRadius: 8,
                              spreadRadius: 0,
                              offset: Offset(
                                0,
                                3,
                              ),
                            ),
                          ],

                          // border: Border.all(
                          //   width: 1,
                          //   color: Colors.black
                          // ),
                          borderRadius: BorderRadius.circular(12)),
                      child: ListTile(
                        
                        
                        title: Text(
                          schedule.title,
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600,color: Colors.black),
                        ),
                        subtitle: Text(
                          schedule.subtitle,
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400,color: Colors.black),
                        ),
                        leading: schedule.icon,
                        // trailing:Text(_formatDate(_selectedDay ?? today),
                        //   style: TextStyle(
                        //       fontSize: 10, fontWeight: FontWeight.w700),),

trailing:      Container(
                    height: 25,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        
                        border: Border.all(
                            color: Colors.black,
                            width: 0.2,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text(
                       _formatDate(_selectedDay ?? today),
                      style: TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.w500,fontSize: 10),
                    )),
                  ),

                        iconColor: Colors.blueAccent,
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
