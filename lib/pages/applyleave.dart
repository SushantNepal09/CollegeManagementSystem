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

  TextEditingController descriptionController = TextEditingController();
  TextEditingController noController = TextEditingController();

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
                      color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    spreadRadius: 2,
                    offset: Offset(0, 4),
                  ),
                ],
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
                          bottomLeft: Radius.circular(15),
                        ),
                        border: Border.all(color: Colors.grey.shade300, width: 0.8),
                        color: Colors.white,
                      ),
                            
                            
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Total',
                              style: TextStyle(
                                  color:
                                       Colors.grey.shade600,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 8,),
                            Text(
                              '15.0',
                              style: TextStyle(
                                  color: Colors.lightBlueAccent,
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                            decoration: BoxDecoration(
                      
                        border: Border.all(color: Colors.grey.shade300, width: 0.8),
                        color: Colors.white,
                      ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Approved',
                                 style: TextStyle(
                                  color:
                                       Colors.grey.shade600,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              '12.0',
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 182, 255, 64),
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold),
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
                          bottomRight: Radius.circular(15),
                        ),
                        border: Border.all(color: Colors.grey.shade300, width: 0.8),
                        color: Colors.white,
                      ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Rejected',
                             style: TextStyle(
                                  color:
                                       Colors.grey.shade600,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              '3.0',
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 255, 64, 64),
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold),
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

if(

(
  
 ( value.day < DateTime.now().day &&
                     ( value.month > DateTime.now().month ||
                      value.year > DateTime.now().year) )
                      
                      ||  ( value.day > DateTime.now().day &&
                     ( value.month > DateTime.now().month ||
                      value.year > DateTime.now().year) )
                      
                      )

              ) {
         datecontroller.text =
                                          "${value.year}/${value.month}/${value.day}";
              }






                                   else if (value.day < DateTime.now().day ||
                                        value.month < DateTime.now().month ||
                                        value.year < DateTime.now().year) {
                                      datecontroller.text =
                                          "${DateTime.now().year}/${DateTime.now().month}/${DateTime.now().day}";
                                    } else {
                                      datecontroller.text =
                                          "${value.year}/${value.month}/${value.day}";
                                    }
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





if(

(
  
 ( value.day < DateTime.now().day &&
                     ( value.month > DateTime.now().month ||
                      value.year > DateTime.now().year) )
                      
                      ||  ( value.day > DateTime.now().day &&
                     ( value.month > DateTime.now().month ||
                      value.year > DateTime.now().year) )
                      
                      )

              ) {
         endDate.text =
                                          "${value.year}/${value.month}/${value.day}";
              }




                                   else if (value.day < DateTime.now().day ||
                                        value.month < DateTime.now().month ||
                                        value.year < DateTime.now().year) {
                                      endDate.text =
                                          "${DateTime.now().year}/${DateTime.now().month}/${DateTime.now().day}";
                                    }
                                    
                                    
                                    
                                     else {
                                      endDate.text =
                                          "${value.year}/${value.month}/${value.day}";
                                    }
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
          Builder(builder: (context) {
              var diff = dateTime2.difference(dateTime);
              if (diff.inHours < 1 ) {
                return Text('Invalid Date selected');
              }
              
                           else if(

(
  
 ( dateTime2.day < DateTime.now().day &&
                     ( dateTime2.month > DateTime.now().month ||
                      dateTime2.year > DateTime.now().year) )
                      
                      ||  ( dateTime2.day > DateTime.now().day &&
                     ( dateTime2.month > DateTime.now().month ||
                      dateTime2.year > DateTime.now().year) )
                      
                      )

              ) {
                return Text(
                  'Request ${diff.inDays} Day Leave',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.red,
                      fontWeight: FontWeight.w500),
                );
              }
              
              
               else if (dateTime.day < DateTime.now().day ||
                  dateTime.month < DateTime.now().month ||
                  dateTime.year < DateTime.now().year) {
                return Text('Invalid Date selected');
              } else if ((dateTime2.day < DateTime.now().day ||
                      dateTime2.month < DateTime.now().month ||
                      dateTime2.year < DateTime.now().year) ||
                  (dateTime2.day < dateTime.day ||
                      dateTime2.month < dateTime.month ||
                      dateTime2.year < dateTime.year)) {
                return Text('Invalid Date selected');
              } 
              
 

else {
      return Text(
                  'Request ${diff.inDays} Day Leave',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.red,
                      fontWeight: FontWeight.w500),
                );
}


            }),
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
                controller: descriptionController,
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
                controller: noController,
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
              child: ElevatedButton(
                onPressed: () {


//  if ((
  
//  ( dateTime2.day < DateTime.now().day &&
//                      ( dateTime2.month > DateTime.now().month ||
//                       dateTime2.year > DateTime.now().year) )
                      
//                       ||  ( dateTime2.day > DateTime.now().day &&
//                      ( dateTime2.month > DateTime.now().month ||
//                       dateTime2.year > DateTime.now().year) )
// ||

//                        (( dateTime2.day > dateTime.day &&
//                      ( dateTime2.month > dateTime.month &&
//                       dateTime2.year == dateTime.year) ) && ( dateTime.day <= DateTime.now().day &&
//                      ( dateTime.month <= DateTime.now().month ||
//                       dateTime.year <= DateTime.now().year) ))

//                       ||
//                       (

//   ( dateTime2.day > dateTime.day &&
//                      ( dateTime2.month == dateTime.month &&
//                       dateTime2.year == dateTime.year) )
//                       )
                      
//                       ) 
                    
                  
                      
//                       && descriptionController.text.isNotEmpty && noController.text.isNotEmpty
                      
//                       )


if(
  dateTime.isAfter(DateTime.now()) || (dateTime.isAtSameMomentAs(DateTime.now()))
&& dateTime2.isAfter(dateTime) && descriptionController.text.isNotEmpty && noController.text.isNotEmpty
)
{
   ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Center(child: Text('Submitted SuccessFully',style: TextStyle(color: Colors.green,fontWeight: FontWeight.w500,fontSize: 18)))));
}

 else if(descriptionController.text.isEmpty || noController.text.isEmpty  )
{

ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(content: Center(child: Text('Fill All Required Field',style: TextStyle(color: Colors.red,fontWeight: FontWeight.w500,fontSize: 18))))
);

}



else if (dateTime2.day  < dateTime.day ||dateTime2.month  < dateTime.month ||dateTime2.year  < dateTime.year ||(dateTime2.day < DateTime.now().day ||
                      dateTime2.month < DateTime.now().month ||
                      dateTime2.year < DateTime.now().year) ||
                  (dateTime2.day < dateTime.day ||
                      dateTime2.month < dateTime.month ||
                      dateTime2.year < dateTime.year)   || (dateTime2.day < DateTime.now().day ||
                      dateTime2.month < DateTime.now().month ||
                      dateTime2.year < DateTime.now().year) ||
                  (dateTime2.day < dateTime.day ||
                      dateTime2.month < dateTime.month ||
                      dateTime2.year < dateTime.year)
                      
                      || dateTime2.day  == dateTime.day &&dateTime2.month  == dateTime.month && dateTime2.year  == dateTime.year 

                     

                      
                      ){

 ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Center(child: Text('Enter Valid Date and Time',style: TextStyle(color: Colors.red,fontWeight: FontWeight.w500,fontSize: 18)))));

}




else {
   ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Center(child: Text('Fill all the Fields Carefully',style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.w500,fontSize: 18)))));
}


               
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Button color
                  foregroundColor: Colors.white, // Text color
                  shadowColor: Colors.black, // Shadow color
                  elevation: 5, // Elevation (depth)
                  minimumSize: Size(50, 50),
                  padding: EdgeInsets.symmetric(
                      horizontal: 20, vertical: 15), // Button padding
                  textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold), // Text styling
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15), // Rounded corners
                  ),
                ),
                child: Text('SUBMIT'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
