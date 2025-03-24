import 'package:flutter/material.dart';
import 'package:student/allvariables/allVar.dart';

var _dropDownValue = "CSIT";

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
        title: Text(
          'Exam Results',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 40, bottom: 40, left: 40, right: 40),
            child: Center(
                child: Image.asset(
              'assets/report.png',
              height: 180,
            )),
          ),
          Padding(
           padding:
                const EdgeInsets.only(top: 40, bottom: 40, left: 38, right: 38),
            child: Container(
              // width: MediaQuery.sizeOf(context).width * 1.1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: .5,color: Colors.grey)
              ),
              child: DropdownButton(
                  items: [
                    DropdownMenuItem(
                    
                      value: 'CSIT',
                      child: Text('  Bsc.CSIT'),
                    ),
                    DropdownMenuItem(
                      value: 'BIT',
                      child: Text('  BIT'),
                    ),
                    DropdownMenuItem(
                      value: 'Physics',
                      child: Text('  Bsc.Physics'),
                    ),
                    DropdownMenuItem(
                      value: 'BTECH',
                      child: Text('  B.TECH'),
                    ),
                    DropdownMenuItem(
                      value: 'Biology',
                      child: Text('  Biology'),
                    ),
                  ],
                  value: _dropDownValue,
                  isExpanded: true,

                  borderRadius: BorderRadius.circular(10),
                  style: TextStyle(color: const Color.fromARGB(255, 13, 13, 13),fontSize: 18,fontWeight: FontWeight.w500
                  ),
                  underline: Container(
                   height: 0, 
                    
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      _dropDownValue = newValue!;
                    });
                  }),
            ),
          )
        ],
      ),
    );
  }
}
