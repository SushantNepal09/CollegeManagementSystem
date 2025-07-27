import 'package:flutter/material.dart';
import 'package:student/pages/exampage/tabs/examcont.dart';

class Firsttab extends StatefulWidget {
  const Firsttab({super.key});

  @override
  State<Firsttab> createState() => _FirsttabState();
}

class _FirsttabState extends State<Firsttab> {
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
                Icon(Icons.access_alarm, color: Colors.blueAccent, size: 22),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Upcoming Examination',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                ),
               
              ],
            ),
          ),
           Expanded(
                    child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Examcontent(index: index);
                        }))
        ],
      ),
    );
  }
}
