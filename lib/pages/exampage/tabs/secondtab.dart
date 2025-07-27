import 'package:flutter/material.dart';
import 'package:student/allvariables/allresults.dart';
import 'package:student/pages/exampage/tabs/resulcontent.dart';
class Secondtab extends StatefulWidget {
  const Secondtab({super.key});

  @override
  State<Secondtab> createState() => _SecondtabState();
}

class _SecondtabState extends State<Secondtab> {
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
                Icon(Icons.bar_chart_sharp, color: Colors.blueAccent, size: 22),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Examination Result',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                ),
              
              ],
            ),
          ),
            Expanded(
              child: ListView.builder(
                      itemCount: examresult.length,
                      itemBuilder: (context, index) {
                        return MyResults();
                      }),
            )
        ],
      ),
    );
    ;
  }
}
