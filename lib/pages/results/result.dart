import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:student/allvariables/allVar.dart';
import 'package:student/pages/results/pdf.dart';

var _dropDownValue = "CSIT";
var _classValue = "1st Sem";
var _yearValue = "1st Year";

// ignore: non_constant_identifier_names
String?
    SelectedValue; //inorder the change the sem and class initally i initalize a string called Selected Value

final List SymbolNo = ['79011469','79011470','79011471','79011472', '79011473', '79011474', '79011475', '79011476', '79011477', '79011478', '79011479', '79011480', '79011481', '79011482', '79011483', '79011484', '79011485', '79011486', '79011487', '79011488', '79011489', '79011490', '79011491', '79011492', '79011493', '79011494', '79011495', '79011496', '79011497', '79011498', '79011499', '79011500', '79011501', '79011502', '79011503'];

//using set instead of List beacuse it has time complexity of o(1)

// final Set SymbolNo = {'79011479', '79011500', '79011501', '79011485'};

class LatestReports extends StatefulWidget {
  const LatestReports({super.key});

  @override
  State<LatestReports> createState() => _LatestReportsState();
}

class _LatestReportsState extends State<LatestReports> {
  TextEditingController symbolNo = TextEditingController();
  TextEditingController confirmSymbolNo = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _formKey2 = GlobalKey<FormState>();
  bool hello =
      true; // this i used to change the drop down box when csit or bit is selected

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
      body: SingleChildScrollView(
        child: Column(
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
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            children: [
                              // Icon(Icons.computer),
                              SizedBox(
                                width: 20,
                              ),
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
                              // Icon(Icons.settings),
                              SizedBox(
                                width: 20,
                              ),
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
                              // Icon(Icons.electric_bolt_outlined),
                              SizedBox(
                                width: 20,
                              ),
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
                              // Icon(Icons.food_bank_outlined),
                              SizedBox(
                                width: 20,
                              ),
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
                              // Icon(Icons.biotech_outlined),
                              SizedBox(
                                width: 20,
                              ),
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
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                    underline: Container(
                      height: 0,
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        _dropDownValue = newValue!;
                        SelectedValue =
                            newValue; //the i made the selected value equal to newvalue
                        if (SelectedValue == "CSIT" || SelectedValue == "BIT") {
                          //then i compared selectedvalue with the value date if value date is equal to csit and bit then set hello = true else false
                          hello = true;
                        } else {
                          hello = false;
                        }
                      });
                    }),
              ),
            ),
        
        //place here for semester and year
            hello //on based on true or false value it displays the necessay container
                ? Padding(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10, left: 38, right: 38),
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
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text('1st Sem'),
                                  ],
                                ),
                              ),
                            ),
                            DropdownMenuItem(
                              value: '2nd Sem',
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text('2nd Sem'),
                                  ],
                                ),
                              ),
                            ),
                            DropdownMenuItem(
                              value: '3rd Sem',
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text('3rd Sem'),
                                  ],
                                ),
                              ),
                            ),
                            DropdownMenuItem(
                              value: '4th Sem',
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text('4th Sem'),
                                  ],
                                ),
                              ),
                            ),
                            DropdownMenuItem(
                              value: '5th Sem',
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text('5th Sem'),
                                  ],
                                ),
                              ),
                            ),
                            DropdownMenuItem(
                              value: '6th Sem',
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text('6th Sem'),
                                  ],
                                ),
                              ),
                            ),
                            DropdownMenuItem(
                              value: '7th Sem',
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text('7th Sem'),
                                  ],
                                ),
                              ),
                            ),
                            DropdownMenuItem(
                              value: '8th Sem',
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text('8th Sem'),
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
                              fontSize: 16,
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
                : Padding(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10, left: 38, right: 38),
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
                              value: '1st Year',
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text('1st Year'),
                                  ],
                                ),
                              ),
                            ),
                            DropdownMenuItem(
                              value: '2nd Year',
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text('2nd Year'),
                                  ],
                                ),
                              ),
                            ),
                            DropdownMenuItem(
                              value: '3rd Year',
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text('3rd Year'),
                                  ],
                                ),
                              ),
                            ),
                            DropdownMenuItem(
                              value: '4th Year',
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text('4th Year'),
                                  ],
                                ),
                              ),
                            ),
                          ],
                          value: _yearValue,
                          isExpanded: true,
                          borderRadius: BorderRadius.circular(10),
                          style: TextStyle(
                              color: const Color.fromARGB(255, 0, 0, 0),
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                          underline: Container(
                            height: 0,
                          ),
                          onChanged: (String? newValue) {
                            setState(() {
                              _yearValue = newValue!;
                            });
                          }),
                    ),
                  ),
        
            Padding(
              padding:
                  const EdgeInsets.only(top: 10, bottom: 10, left: 38, right: 38),
              child: Form(
                key: _formKey2,
                child: TextFormField(
                  controller: symbolNo,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: .5),
                        borderRadius: BorderRadius.circular(15)),
                    labelText: "Enter Your Symbol No:",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Field Cannot be left empty";
                    } else if (!SymbolNo.contains(value)) {
                      return "Symbol Number doesn't exist";
                    } else {
                      return null;
                    }
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                ),
              ),
            ),
        
            Padding(
              padding:
                  const EdgeInsets.only(top: 10, bottom: 40, left: 38, right: 38),
              child: Form(
                key: _formKey,
                child: TextFormField(
                  controller: confirmSymbolNo,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: InputDecoration(
                      labelText: "Confirm Your Symbol No:",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Field Cannot be left empty";
                    } else if (!SymbolNo.contains(value)) {
                      return "Symbol Number doesn't exist";
                    } else {
                      return null;
                    }
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                ),
              ),
            ),
        
            ElevatedButton(
                onPressed: () {
                  _formKey.currentState!.validate();
                  _formKey2.currentState!.validate();
        
                  if (symbolNo.text == confirmSymbolNo.text &&
                      symbolNo.text.isNotEmpty
                      && 
                      SymbolNo.contains(symbolNo.text)
                      ) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FinalResult()));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Enter the Symbol no correctly',
                            style: TextStyle(
                                color: Colors.redAccent,
                                fontWeight: FontWeight.w400,
                                fontSize: 14))));
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
                      fontSize: 18, fontWeight: FontWeight.bold), // Text styling
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15), // Rounded corners
                  ),
                ),
                child: Text('SUBMIT'))
          ],
        ),
      ),
    );
  }
}
