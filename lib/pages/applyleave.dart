import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:open_file/open_file.dart';
import 'package:student/allvariables/allVar.dart';

var lessStart = DateTime.now();
var lessend;
String dropdownValue = 'One';

class Applyleave extends StatefulWidget {
  const Applyleave({super.key});

  @override
  State<Applyleave> createState() => _ApplyleaveState();
}

class _ApplyleaveState extends State<Applyleave> {
  List pickedFilesList =
      []; // for uploading files this is a list which stores the file

  pickFiles() async {
    var result = await FilePicker.platform.pickFiles(
      allowMultiple: false,
    );

    if (result != null) {
      setState(() {
        pickedFilesList = result.files.map((file) => File(file.path!)).toList();
      });
    }
  }

  openFile(file) {
    OpenFile.open(file.path);
  }

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 18.0, right: 45, left: 45, bottom: 20),
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
                                  color:
                                      const Color.fromARGB(255, 158, 151, 151),
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
                        decoration:
                            BoxDecoration(border: Border.all(width: .5)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Approved',
                              style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 158, 151, 151),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              '12.0',
                              style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 100, 207, 29),
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
                                  color:
                                      const Color.fromARGB(255, 158, 151, 151),
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
            // SizedBox(
            //   width: MediaQuery.sizeOf(context).width * 1,
            //   child: Padding(
            //     padding: const EdgeInsets.only(top: 18.0, left: 30, right: 30),
            //     child: TextField(
            //       decoration: InputDecoration(
            //         hintText: "Please Select Reason Behind this leave",
            //         labelText: "Reason",
            //         border: OutlineInputBorder(),
            //       ),
            //     ),
            //   ),
            // ),

            Padding(
              padding: const EdgeInsets.only(top: 18.0, left: 30, right: 30),
              child: Text('Please Select a Reason'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 30, right: 30),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                width: MediaQuery.sizeOf(context).width * 1,
                child: DropdownButton(
                    value: dropdownValue,
                    isExpanded: true,
                    borderRadius: BorderRadius.circular(10),
                    underline: Container(
                      height: 0,
                    ),
                    items: [
                      DropdownMenuItem(
                        value: "One",
                        child: Text("   Health"),
                      ),
                      DropdownMenuItem(
                        value: "Two",
                        child: Text("   Family/Personal"),
                      ),
                      DropdownMenuItem(
                        value: "Three",
                        child: Text("   Acedemic/Work"),
                      ),
                      DropdownMenuItem(
                        value: "Four",
                        child: Text("   Others"),
                      )
                    ],
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    }),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 25.0, left: 30, right: 30),
              child: TextField(
                maxLines: 4,
                decoration: InputDecoration(
                    labelText: 'Description',
                    alignLabelWithHint: true,
                    hintText: 'Describe Your Situation in Short',
                    border: OutlineInputBorder()),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 25.0, left: 30, right: 30),
              child: TextField(
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                maxLength: 10,
                decoration: InputDecoration(
                    labelText: "Contact no.",
                    hintText: "98XXXXXXXX",
                    border: OutlineInputBorder()),
              ),
            ),
            pickedFilesList.isNotEmpty
                ? ListView.builder(
                    itemCount: pickedFilesList.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            top: 25.0, left: 30, right: 30, bottom: 20),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(width: 1),
                              borderRadius: BorderRadius.circular(10)),
                          child: ListTile(
                            minTileHeight: 30,
                            onTap: () {
                              openFile(pickedFilesList[index]);
                            },
                            leading: Image.asset('assets/pdf.png'),
                            subtitle:
                                Text("File : ${pickedFilesList[index].path}"),
                            trailing: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    pickedFilesList = [];
                                  });
                                },
                                child: Image.asset(
                                  'assets/cross.png',
                                  height: 30,
                                )),
                          ),
                        ),
                      );
                    },
                  )
                : Padding(
                    padding:
                        const EdgeInsets.only(top: 25.0, left: 30, right: 30),
                    child: GestureDetector(
                      onTap: pickFiles,
                      child: Container(
                        height: 90,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Upload Documents(Optional)'),
                            Image.asset(
                              'assets/uploadfile.png',
                              height: 50,
                            )
                          ],
                        )),
                      ),
                    ),
                  ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0, left: 30, right: 30),
              child: ElevatedButton(onPressed: (){},
              
                    style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue, // Button color
              foregroundColor: Colors.white, // Text color
              shadowColor: Colors.black, // Shadow color
              elevation: 5, // Elevation (depth)
              minimumSize: Size(50, 50),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15), // Button padding
              textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), // Text styling
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15), // Rounded corners
              ),), child: Text('SUBMIT')
             ,),
            )
          ],
        ),
      ),
    );
  }
}
