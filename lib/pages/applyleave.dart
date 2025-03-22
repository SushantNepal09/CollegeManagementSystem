import 'package:flutter/material.dart';
import 'package:student/allvariables/allVar.dart';

var lessStart = DateTime.now();
var lessend ;

class Applyleave extends StatefulWidget {
  const Applyleave({super.key});

  @override
  State<Applyleave> createState() => _ApplyleaveState();
}

class _ApplyleaveState extends State<Applyleave> {
  DateTime dateTime = DateTime.now();
  DateTime dateTime2 = DateTime.now();

  late TextEditingController datecontroller = TextEditingController(
      text: "${dateTime.year}/${dateTime.month}/${dateTime.day}");
  late TextEditingController endDate = TextEditingController(
      text: "${dateTime2.year}/${dateTime2.month}/${dateTime2.day}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryBlue,
        title: Text(
          'Apply Leave',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                top: 28.0, right: 45, left: 45, bottom: 40),
            child: Container(
              decoration: BoxDecoration(
                border: Border(top: BorderSide.none),
                // borderRadius: BorderRadius.circular(15)
              ),
              height: 70,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomLeft: Radius.circular(15)),
                          border: Border.all(width: .5)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Total',
                            style: TextStyle(
                                color: const Color.fromARGB(255, 158, 151, 151),
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            '15.0',
                            style: TextStyle(
                                color: Colors.lightBlueAccent,
                                fontSize: 25,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(border: Border.all(width: .5)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Approved',
                            style: TextStyle(
                                color: const Color.fromARGB(255, 158, 151, 151),
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            '12.0',
                            style: TextStyle(
                                color: const Color.fromARGB(255, 100, 207, 29),
                                fontSize: 25,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                              bottomRight: Radius.circular(15)),
                          border: Border.all(width: .5)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Rejected',
                            style: TextStyle(
                                color: const Color.fromARGB(255, 158, 151, 151),
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            '3.0',
                            style: TextStyle(
                                color: const Color.fromARGB(255, 207, 38, 29),
                                fontSize: 25,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Text(
            'Apply Leave',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.4,
                  child: TextField(
                    controller: datecontroller,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {
                              showDatePicker(
                                      context: context,
                                      firstDate: DateTime.utc(2002, 01, 02),
                                      lastDate: DateTime.utc(2030, 12, 30))
                                  .then((value) {
                              
                                setState(() {
                                  dateTime = value!;
                                  datecontroller.text =
                                      "${value.year}/${value.month}/${value.day}";
                                });
                              });
                            },
                            icon: Icon(Icons.calendar_month)),
                        border: OutlineInputBorder(),
                        labelText: "Start Date",
                        hintText: "Y/M/D"),
                    keyboardType: TextInputType.datetime,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.4,
                  child: TextField(
                    controller: endDate,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {
                              showDatePicker(
                                      context: context,
                                      firstDate: DateTime.utc(2002, 01, 02),
                                      lastDate: DateTime.utc(2030, 12, 30))
                                  .then((value) {
                               
                                  setState(() {
                                    dateTime2 = value!;
                                    endDate.text =
                                        "${value.year}/${value.month}/${value.day}";
                                  });
                               
                              });
                            },
                            icon: Icon(Icons.calendar_month)),
                        border: OutlineInputBorder(),
                        labelText: "End Date",
                        hintText: "Y/M/D"),
                    keyboardType: TextInputType.datetime,
                  ),
                ),











              ],
            ),
          ),

SizedBox(
   width: MediaQuery.sizeOf(context).width * 1,
  child: Padding(
    padding: const EdgeInsets.only(top: 18.0,left: 30,right: 30),
    child: TextField(
      decoration: InputDecoration(
        hintText: "Please Select Reason Behind this leave",
        labelText: "Reason",
         border: OutlineInputBorder(),
      ),
    ),
  ),
),

        ],
      ),
    );
  }
}
