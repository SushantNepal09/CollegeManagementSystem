import 'package:flutter/material.dart';
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
                labelname: 'Name',
              ),
              TextFieldSample(
                labelname: 'PhoneNo',
              ),
                TextFieldSample(
                labelname: 'Address',
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

  const TextFieldSample({super.key, required this.labelname});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: TextFormField(
        decoration: InputDecoration(
            label: Text(labelname),
            // ,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 12),

            // hintText: labelname,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
      ),
    );
  }
}
