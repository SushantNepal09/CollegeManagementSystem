import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:student/allvariables/allVar.dart';

TextEditingController fullNameController = TextEditingController();
TextEditingController parentNameController = TextEditingController();
TextEditingController symbolNoController = TextEditingController();
TextEditingController addressController = TextEditingController();

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
              TextFieldSample(
                labelname: 'Address',
                wController: addressController,
              ),
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
            return 'Fill the Required Area';
          }

          //if thise doesnot contain letters a-z and plus(+) means atleast once then throw an error
          if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
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

class NumberField extends StatelessWidget {
  final dynamic info;
  final dynamic controller2num;
  const NumberField(
      {super.key, required this.info, required this.controller2num});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, left: 10, right: 10),
      child: TextFormField(
        controller: controller2num,
        keyboardType: TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'This Field Cannot be Empty';
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
              info,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
            ),
            hintText: info,
            // hintStyle: TextStyle(color: Colors.blueAccent),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.grey))),
      ),
    );
  }
}
