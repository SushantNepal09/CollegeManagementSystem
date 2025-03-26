import 'package:flutter/material.dart';
import 'package:student/allvariables/allVar.dart';

var _dropDownValue = "CSIT";
var _classValue = "1st Sem";

List Year = ["    B.TECH",];

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
                const EdgeInsets.only(top: 40, bottom: 10, left: 38, right: 38),
            child: Container(
              // width: MediaQuery.sizeOf(context).width * 1.1,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      width: .5,
                      color: const Color.fromARGB(255, 150, 149, 149))),
              child: DropdownButton(
                  dropdownColor: Colors.lightBlueAccent,
                  iconEnabledColor: Colors.lightBlueAccent,
                  iconSize: 35,
                  items: [
                    DropdownMenuItem(
                      value: 'CSIT',
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 30),
                        child: Row(
                          children: [
                            Icon(Icons.computer),
                            SizedBox(width: 20,),
                            Text('Bsc.CSIT'),
                          ],
                        ),
                      ),
                    ),
                    DropdownMenuItem(
                      value: 'BIT',
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: [
                            Icon(Icons.settings),
                             SizedBox(width: 20,),
                            Text('BIT'),
                          ],
                        ),
                      ),
                    ),
                    DropdownMenuItem(
                      value: 'Physics',
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: [
                            Icon(Icons.electric_bolt_outlined),
                             SizedBox(width: 20,),
                            Text('Bsc.Physics'),
                          ],
                        ),
                      ),
                    ),
                    DropdownMenuItem(
                      value: 'BTECH',
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: [
                            Icon(Icons.food_bank_outlined),
                             SizedBox(width: 20,),
                            Text('B.TECH'),
                          ],
                        ),
                      ),
                    ),
                    DropdownMenuItem(
                      value: 'Biology',
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: [
                            Icon(Icons.biotech_outlined),
                             SizedBox(width: 20,),
                            Text('Biology'),
                          ],
                        ),
                      ),
                    ),
                  ],
                  value: _dropDownValue,
                  isExpanded: true,
                  borderRadius: BorderRadius.circular(10),
                  style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                  underline: Container(
                    height: 0,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      _dropDownValue = newValue!;
                    });
                  }),
            ),
          ),

//place here for semester and year




          Padding(
            padding:
                const EdgeInsets.only(top: 10, bottom: 40, left: 38, right: 38),
            child: Container(
              // width: MediaQuery.sizeOf(context).width * 1.1,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      width: .5,
                      color: const Color.fromARGB(255, 150, 149, 149))),
              child: DropdownButton(
                  dropdownColor: Colors.lightBlueAccent,
                  iconEnabledColor: Colors.lightBlueAccent,
                  iconSize: 35,
                  items: [
                    DropdownMenuItem(
                      value: '1st Sem',
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: [
                             SizedBox(width: 20,),
                            Text('1st Sem'),
                          ],
                        ),
                      ),
                    ),
                    DropdownMenuItem(
                      value: '2nd Sem',
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: [
                             SizedBox(width: 20,),
                            Text('2nd Sem'),
                          ],
                        ),
                      ),
                    ),
                    DropdownMenuItem(
                      value: '3rd Sem',
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: [
                             SizedBox(width: 20,),

                            Text('3rd Sem'),
                          ],
                        ),
                      ),
                    ),
                    DropdownMenuItem(
                      value: '4th Sem',
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: [
                             SizedBox(width: 20,),
                            Text('4th Sem'),
                          ],
                        ),
                      ),
                    ),
                    DropdownMenuItem(
                      value: '5th Sem',
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: [
                             SizedBox(width: 20,),
                            Text('5th Sem'),
                          ],
                        ),
                      ),
                    ),
                    DropdownMenuItem(
                      value: '6th Sem',
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: [
                             SizedBox(width: 20,),
                            Text('6th Sem'),
                          ],
                        ),
                      ),
                    ),
                    DropdownMenuItem(
                      value: '7th Sem',
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: [
                             SizedBox(width: 20,),
                            Text('7th Sem'),
                          ],
                        ),
                      ),
                    ),
                    DropdownMenuItem(
                      value: '8th Sem',
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: [
                             SizedBox(width: 20,),
                            Text(' 8th Sem'),
                          ],
                        ),
                      ),
                    ),
                  ],
                  value: _classValue,
                  isExpanded: true,
                  borderRadius: BorderRadius.circular(10),
                  style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                  underline: Container(
                    height: 0,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      _classValue = newValue!;
                    });
                  }),
            ),
          )


,


        // Padding(
        //     padding:
        //         const EdgeInsets.only(top: 40, bottom: 40, left: 38, right: 38),
        //     child: Container(
        //       // width: MediaQuery.sizeOf(context).width * 1.1,
        //       decoration: BoxDecoration(
        //           color: Colors.white,
        //           borderRadius: BorderRadius.circular(10),
        //           border: Border.all(
        //               width: .5,
        //               color: const Color.fromARGB(255, 150, 149, 149))),
        //       child: DropdownButton(
        //           dropdownColor: Colors.lightBlueAccent,
        //           iconEnabledColor: Colors.lightBlueAccent,
        //           iconSize: 35,
        //           items: [
        //             DropdownMenuItem(
        //               value: '1st Year',
        //               child: Padding(
        //                 padding: const EdgeInsets.only(left: 10, right: 10),
        //                 child: Row(
        //                   children: [
        //                     Text('    1st Year'),
        //                   ],
        //                 ),
        //               ),
        //             ),
        //             DropdownMenuItem(
        //               value: '2nd Year',
        //               child: Padding(
        //                 padding: const EdgeInsets.only(left: 10, right: 10),
        //                 child: Row(
        //                   children: [
        //                     Text('    2nd Year'),
        //                   ],
        //                 ),
        //               ),
        //             ),
        //             DropdownMenuItem(
        //               value: '3rd Year',
        //               child: Padding(
        //                 padding: const EdgeInsets.only(left: 10, right: 10),
        //                 child: Row(
        //                   children: [
        //                     Text('    3rd Year'),
        //                   ],
        //                 ),
        //               ),
        //             ),
        //             DropdownMenuItem(
        //               value: '4th Year',
        //               child: Padding(
        //                 padding: const EdgeInsets.only(left: 10, right: 10),
        //                 child: Row(
        //                   children: [
        //                     Text('    4th Year'),
        //                   ],
        //                 ),
        //               ),
        //             ),

        //           ],
        //           value: _classValue,
        //           isExpanded: true,
        //           borderRadius: BorderRadius.circular(10),
        //           style: TextStyle(
        //               color: const Color.fromARGB(255, 0, 0, 0),
        //               fontSize: 18,
        //               fontWeight: FontWeight.w500),
        //           underline: Container(
        //             height: 0,
        //           ),
        //           onChanged: (String? newValue) {
        //             setState(() {
        //               _classValue = newValue!;
        //             });
        //           }),
        //     ),
        //   )



        ],
      ),
    );
  }
}
