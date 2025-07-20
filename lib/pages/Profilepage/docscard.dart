import 'package:flutter/material.dart';
import 'package:student/allvariables/allVar.dart';

class Docscard extends StatefulWidget {
  final dynamic maintitle;
  final dynamic currentcondtion;
  final dynamic whaticon;

  const Docscard({super.key, required this.maintitle, this.currentcondtion, this.whaticon});

  @override
  State<Docscard> createState() => _DocscardState();
}

class _DocscardState extends State<Docscard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0, left: 20, right: 20),
      child: Container(
        // height: 60,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(14),
            boxShadow: [
              BoxShadow(
                color: Colors.black12, // soft black
                spreadRadius: 1,
                blurRadius: 10,
                offset: Offset(0, 4), // subtle downward shadow
              ),
            ]),

        child: ListTile(
          leading: 
            widget.whaticon,iconColor: const Color.fromARGB(255, 0, 0, 0),
           
          
          title: Text(
            widget.maintitle,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600,color: Colors.black),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.currentcondtion,
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'View',
                    style: TextStyle(
                        color: Colors.blueAccent, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Download',
                    style: TextStyle(
                        color: Colors.blueAccent, fontWeight: FontWeight.w500),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
