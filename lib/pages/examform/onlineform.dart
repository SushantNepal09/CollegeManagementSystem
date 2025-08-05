import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:student/allvariables/allVar.dart';

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
              ),
              // SizedBox(height: 5,),
              TextFieldSample(
                labelname: "Parent's Name",
              ),
                NumberField(
                info: 'Symbol No',
              ),
              TextFieldSample(
                labelname: 'Address',
              ),
            
            ],
          ),
        ),
      ),
    );
  }
}

class TextFieldSample extends StatelessWidget {
  final String labelname;

  const TextFieldSample({super.key, required this.labelname});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, left: 10, right: 10),
      child: TextFormField(
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

  const NumberField({super.key,required this.info});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, left: 10, right: 10),
      child: TextFormField(

keyboardType: TextInputType.number,
inputFormatters: [FilteringTextInputFormatter.digitsOnly],

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
