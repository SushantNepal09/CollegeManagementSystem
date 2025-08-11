import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:open_file/open_file.dart';
import 'package:path/path.dart';
import 'package:path/path.dart';
import 'package:student/allvariables/allVar.dart';
import 'package:student/main.dart';

TextEditingController fullNameController = TextEditingController();
TextEditingController parentNameController = TextEditingController();
TextEditingController symbolNoController = TextEditingController();
TextEditingController addressController = TextEditingController();
TextEditingController dateController = TextEditingController();
TextEditingController semesterController = TextEditingController();
TextEditingController year = TextEditingController();
TextEditingController regNoController = TextEditingController();
TextEditingController yearNoController = TextEditingController();
TextEditingController codeController = TextEditingController();
TextEditingController subController = TextEditingController();
List<TextEditingController> controllers = [];
List<TextEditingController> subscontrollers = [];
String? valueDropDown;
int ram = 1;
File? _selectedImage;
File? _selectedSignature;
openFile(file) async {
  OpenFile.open(file.path);
}

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
      body: SingleChildScrollView(
        child: Center(
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
                  numlength: 8,
                  numlength2: 6,
                  errormessage: 'Symbol No',
                ),
                NumberField(
                  info: 'Batch',
                  controller2num: yearNoController,
                  numlength: 4,
                  numlength2: 4,
                  errormessage: 'Year',
                ),
                AddressContainer(
                  labelname: 'Address',
                  aController: addressController,
                ),

                DateFormat1(),

                DropDown(
                  labelname: 'Select Course',
                  dropvalue1: 'BIT',
                  dropvalue2: 'BSc.Csit',
                ),
                NumberField(
                  info: 'Semester',
                  controller2num: semesterController,
                  numlength: 1,
                  numlength2: 0,
                  errormessage: 'Semester',
                ),

                DropDown(
                  labelname: 'Select Exam Type',
                  dropvalue1: 'Regular',
                  dropvalue2: 'Partial',
                ),
                NumberField(
                  info: 'Registration No',
                  controller2num: regNoController,
                  numlength: 10,
                  numlength2: 10,
                  errormessage: 'Registration Number',
                ),

                Padding(
                  padding:
                      const EdgeInsets.only(top: 12.0, left: 15, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        textAlign: TextAlign.start,
                        'Subjects',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              controllers.add(TextEditingController());
                              subscontrollers.add(TextEditingController());
                            });
                          },
                          child: Text('Add Subject',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w500)))
                    ],
                  ),
                ),
                Column(
                    children: List.generate(
                  controllers.length,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: SizedBox(
                        height: 80,
                        // width: MediaQuery.of(context).size.width*0.8,
                        child: Row(
                          children: [
                            Text(
                              '${index + 1} .',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            Expanded(
                                child: CodeandSubject(
                              Code: controllers[index],
                              Subject: subscontrollers[index],
                            )),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    controllers[index].dispose();
                                    subscontrollers[index].dispose();

                                    // Remove from both lists
                                    controllers.removeAt(index);
                                    subscontrollers.removeAt(index);
                                  });
                                },
                                icon: Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                ))
                          ],
                        ),
                      ),
                    );
                  },
                )),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Text(
                      textAlign: TextAlign.start,
                      'Add Required Photos',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            _pickImageFromGallery();
                          },
                          style: ElevatedButton.styleFrom(
                              side:
                                  BorderSide(width: 0.5, color: Colors.black)),
                          child: Text('Pick Your Photo',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w500))),
                      ElevatedButton(
                          onPressed: () {
                            _pickSignature();
                          },
                          style: ElevatedButton.styleFrom(
                              side:
                                  BorderSide(width: 0.5, color: Colors.black)),
                          child: Text('Pick Your Signature',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w500))),
                    ],
                  ),
                ),

                _selectedImage != null
                    ? Padding(
                        padding:
                            const EdgeInsets.only(top: 25, left: 15, right: 15),
                        child: Container(
                            // height: 55,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 0.5),
                                borderRadius: BorderRadius.circular(10)),
                            child: ListTile(
                              leading: Image.asset('assets/imagesample.png'),
                              title: Text(basename(_selectedImage!.path)),
                              subtitle: GestureDetector(
                                onTap: () {
                                  openFile(_selectedImage);
                                },
                                child: Text(
                                  'Click to View',
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              trailing: IconButton(
                                  onPressed: () {
setState(() {
  _selectedImage = null;
});


                                  }, icon: Icon(Icons.delete)),
                            )),
                      )
                    : Text(""),

                SizedBox(
                  height: 50,
                  child: _selectedSignature != null
                      ? Image.file(_selectedSignature!)
                      : Text(''),
                ),

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: OutlinedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.resolveWith<Color?>(
                          (states) {
                            if (states.contains(WidgetState.pressed)) {
                              return Colors.lightGreenAccent;
                            }

                            if (states.contains(WidgetState.hovered)) {
                              return Colors.amber;
                            }
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
      ),
    );
  }

  Future _pickImageFromGallery() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    setState(() {
      _selectedImage = File(returnedImage!.path);
    });
  }

  Future _pickSignature() async {
    final signature =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      _selectedSignature = File(signature!.path);
    });
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
                  color: dark ? Colors.white : Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
            ),
            hintText: labelname,
            hintStyle: TextStyle(
              color: dark ? Colors.white : Colors.black,
            )
            // hintStyle: TextStyle(color: Colors.blueAccent),
            ),
      ),
    );
  }
}

class NumberField extends StatefulWidget {
  final dynamic info;
  final dynamic controller2num;
  final dynamic numlength;
  final dynamic numlength2;
  final dynamic errormessage;

  const NumberField(
      {super.key,
      required this.info,
      required this.controller2num,
      this.numlength,
      this.numlength2,
      this.errormessage});

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
          } else if (value.length > widget.numlength) {
            return '${widget.errormessage} cannot be greater than ${widget.numlength} digit';
          } else if (value.length < widget.numlength2) {
            return '${widget.errormessage} cannot be less than ${widget.numlength2} digit';
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
                  color: dark ? Colors.white : Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
            ),
            hintText: widget.info,
            hintStyle: TextStyle(
              color: dark ? Colors.white : Colors.black,
            ),
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
                  color: dark ? Colors.white : Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
            ),
            hintText: 'Date-of-Birth',
            hintStyle: TextStyle(
              color: dark ? Colors.white : Colors.black,
            ),
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
            return 'Fill the required areaA';
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
                color: dark ? Colors.white : Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 14),
          ),

          hintText: widget.labelname,
          hintStyle: TextStyle(
            color: dark ? Colors.white : Colors.black,
          ),
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

  const DropDown(
      {super.key,
      required this.labelname,
      required this.dropvalue1,
      required this.dropvalue2});

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
                    color: dark ? Colors.white : Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 14)),
            hintStyle: TextStyle(
              color: dark ? Colors.white : Colors.black,
            ),
            hint: Text('Select Course',
                style: TextStyle(
                    color: dark ? Colors.white : Colors.black,
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

class CodeandSubject extends StatefulWidget {
  final dynamic Code;
  final dynamic Subject;

  const CodeandSubject({super.key, this.Code, this.Subject});

  @override
  State<CodeandSubject> createState() => _CodeandSubjectState();
}

class _CodeandSubjectState extends State<CodeandSubject> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          child: Row(
            children: [
              Expanded(
                child: CodeField(
                  codecontroller1: widget.Code, //this is to be changed
                ),
              ),
              Expanded(
                  child: TextFieldSample(
                      labelname: 'Subject',
                      wController: widget.Subject //this is to be changed

                      ))
            ],
          ),
        ),
      ],
    );
  }
}

class CodeField extends StatefulWidget {
  final dynamic codecontroller1;

  const CodeField({
    super.key,
    this.codecontroller1,
  });

  @override
  State<CodeField> createState() => _CodeFieldState();
}

class _CodeFieldState extends State<CodeField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, left: 10, right: 10),
      child: TextFormField(
        controller: widget.codecontroller1,
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'[A-Za-z0-9]'))
        ],
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Code is Required';
          } else if (value.length > 8) {
            return 'Codelength Exceeded';
          }
          if (value.length < 4 && !value.contains((RegExp(r'[0-9]')))) {
            return 'Not a Valid Code';
          }

          if (!RegExp(r'^[A-z]{3}').hasMatch(value)) {
            return 'Start with letter';
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
            'Code',
            style: TextStyle(
                color: dark ? Colors.white : Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 14),
          ),

          hintText: 'Code',
          hintStyle: TextStyle(
            color: dark ? Colors.white : Colors.black,
          ),
          // hintStyle: TextStyle(color: Colors.blueAccent),
        ),
      ),
    );
  }
}
