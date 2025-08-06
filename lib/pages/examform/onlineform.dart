import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:student/allvariables/allVar.dart';

TextEditingController fullNameController = TextEditingController();
TextEditingController parentNameController = TextEditingController();
TextEditingController symbolNoController = TextEditingController();
TextEditingController addressController = TextEditingController();
TextEditingController dateController = TextEditingController();
String? valueDropDown;

class Onlineform extends StatefulWidget {
  const Onlineform({super.key});

  @override
  State<Onlineform> createState() => _OnlineformState();
}

class _OnlineformState extends State<Onlineform> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryBlue,
        title: Text(
          'Exam form',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFieldSample(
                labelname: 'Full Name',
                wController: fullNameController,
              ),
              // SizedBox(height: 5,),
              TextFieldSample(
                labelname: "Parent's Name",
                wController: parentNameController,
              ),
              NumberField(
                info: 'Symbol No',
                controller2num: symbolNoController,
              ),
              AddressContainer(
                labelname: 'Address',
                aController: addressController,
              ),

              DateFormat1(),

              DropDown(labelname: 'Select Course', dropvalue1: 'BIT', dropvalue2: 'BSc.Csit',),
               DropDown(labelname: 'Select Exam Type', dropvalue1: 'Regular', dropvalue2: 'Partial',),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: OutlinedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.resolveWith<Color?>(
                        (states) {
                          if (states.contains(WidgetState.pressed))
                            return Colors.lightGreenAccent;

                          if (states.contains(WidgetState.hovered))
                            return Colors.amber;
                          return Colors.amberAccent;
                        },
                      ),
                    ),
                    onPressed: () {
                      _formKey.currentState!.validate();
                    },
                    child: Text(
                      'Test Submit Button',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TextFieldSample extends StatelessWidget {
  final String labelname;
  final dynamic wController;

  const TextFieldSample(
      {super.key, required this.labelname, required this.wController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, left: 10, right: 10),
      child: TextFormField(
        controller: wController,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Fill the required area';
          }

          //if thise doesnot contain letters a-z and plus(+) means atleast once then throw an error
          if (!RegExp(r'^[a-zA-Z ]+$').hasMatch(value)) {
            return 'Only letters are allowed';
          }
          return null;
        },
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(10)),

          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(10),
          ),

          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(10),
          ),
          label: Text(
            labelname,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w500, fontSize: 14),
          ),

          hintText: labelname,
          // hintStyle: TextStyle(color: Colors.blueAccent),
        ),
      ),
    );
  }
}

class NumberField extends StatefulWidget {
  final dynamic info;
  final dynamic controller2num;
  const NumberField(
      {super.key, required this.info, required this.controller2num});

  @override
  State<NumberField> createState() => _NumberFieldState();
}

class _NumberFieldState extends State<NumberField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, left: 10, right: 10),
      child: TextFormField(
        controller: widget.controller2num,
        keyboardType: TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Fill the required area';
          } else if (value.length > 8) {
            return 'Symbol No cannot be greater than 8 digits';
          } else if (value.length < 6) {
            return 'Symbol No cannot be less than 6 digits';
          } else {
            return null;
          }
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue),
              borderRadius: BorderRadius.circular(10),
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(10)),
            label: Text(
              widget.info,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
            ),
            hintText: widget.info,
            // hintStyle: TextStyle(color: Colors.blueAccent),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.grey))),
      ),
    );
  }
}

class DateFormat1 extends StatefulWidget {
  const DateFormat1({super.key});

  @override
  State<DateFormat1> createState() => _DateFormat1State();
}

class _DateFormat1State extends State<DateFormat1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, left: 10, right: 10),
      child: TextFormField(
        controller: dateController,
        readOnly: true,
        keyboardType: TextInputType.datetime,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        onTap: () async {
          showDatePicker(
            context: context,
            firstDate: DateTime.utc(1980, 01, 01),
            lastDate: DateTime.now(),
          ).then((value) {
            //then basically mean when showdatepicker ic completed then run the rest of the code

//this is the code that runs after user picks date or cancels

            setState(() {
              if (value == null) {
                dateController.text = "";
              } else {
                dateController.text =
                    "${value.year}/${value.month}/${value.day}";
              }
            });
          });
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Fill the required area';
          } else {
            return null;
          }
        },
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue),
              borderRadius: BorderRadius.circular(10),
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(10)),
            label: Text(
              'Date-of-Birth',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
            ),
            hintText: 'Date-of-Birth',
            // hintStyle: TextStyle(color: Colors.blueAccent),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.grey))),
      ),
    );
  }
}

class AddressContainer extends StatefulWidget {
  final String labelname;
  final dynamic aController;

  const AddressContainer(
      {super.key, required this.labelname, required this.aController});

  @override
  State<AddressContainer> createState() => _AddressContainerState();
}

class _AddressContainerState extends State<AddressContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, left: 10, right: 10),
      child: TextFormField(
        controller: widget.aController,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Fill the required area';
          }

          //if thise doesnot contain letters a-z and plus(+) means atleast once then throw an error
          // if (!RegExp(r'^[a-zA-Z ]+$').hasMatch(value)) {
          //   return 'Only letters are allowed';
          // }
          return null;
        },
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(10)),

          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(10),
          ),

          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(10),
          ),
          label: Text(
            widget.labelname,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w500, fontSize: 14),
          ),

          hintText: widget.labelname,
          // hintStyle: TextStyle(color: Colors.blueAccent),
        ),
      ),
    );
  }
}

class DropDown extends StatefulWidget {
  final String labelname;
  final String dropvalue1;
  final String dropvalue2;

  const DropDown({super.key, required this.labelname, required this.dropvalue1, required this.dropvalue2});

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, left: 10, right: 10),
      child: DropdownButtonFormField(
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue),
              borderRadius: BorderRadius.circular(10),
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(10)),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(10),
            ),
            label: Text(widget.labelname,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 14)),
            hint: Text('Select Course',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 14))),
        value: valueDropDown,
        borderRadius: BorderRadius.circular(10),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Fill all the required area';
          }
          return null;
        },
autovalidateMode: AutovalidateMode.onUserInteraction,
        isExpanded: true, // expands the dropdown to the size of container

        onChanged: (String? value) {
          setState(() {
            valueDropDown = value!;
          });
        },
        items: [
          DropdownMenuItem(
            value: 'one',
            child: Text(widget.dropvalue1),
          ),
          DropdownMenuItem(
            value: 'Two',
            child: Text(widget.dropvalue2),
          ),
        ],
      ),
    );
  }
}
