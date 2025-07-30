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
  dynamic today = DateTime.now();

  bool change = true;

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
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: TableCalendar(
                  firstDay: DateTime.utc(2020, 01, 01),
                  lastDay: DateTime.utc(2030, 12, 30),
                  focusedDay: today,
                  formatAnimationCurve:!change ? Curves.easeOut:Curves.easeIn,
               
                  formatAnimationDuration:!change ? Duration(seconds: 2):Duration(milliseconds: 1200),
                  onFormatChanged: (format) => {
                    setState(() {
                      change = !change;
                      
                    }),
                  },



                  calendarFormat:
                      change ? CalendarFormat.twoWeeks : CalendarFormat.month,
                  selectedDayPredicate: (day) => isSameDay(day, today),
                  onDaySelected: _ondayselected,
                  availableGestures: AvailableGestures.all,
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
                      color: Colors.deepPurple,
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
          Expanded(
            child: ListView.builder(
                itemCount: Schedule.length,
                itemBuilder: (context, index) {
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
                          Schedule[index].title,
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        subtitle: Text(
                          Schedule[index].subtitle,
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                        leading: Schedule[index].icon,
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
