import 'package:flutter/material.dart';
import 'package:student/allvariables/allVar.dart';
import 'package:student/allvariables/allteachers.dart';

class Teacher extends StatefulWidget {
  const Teacher({super.key});

  @override
  State<Teacher> createState() => _TeacherState();
}

class _TeacherState extends State<Teacher> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
appBar: AppBar(
  title: Text('Chat'),
),

      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: ListView.builder(
          itemCount: teachers.length,
        
          itemBuilder: (context, index) {
            
            return Padding(
              padding: const EdgeInsets.only(left: 5,right: 5,bottom: 5),
              child: Container(
                      
                decoration: BoxDecoration(
                   color: const Color.fromARGB(255, 255, 255, 255),
                  border: Border.all(
                    color: Colors.grey
                    ,width: 1,
                  )
                ),
                height: 51,
               
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(teachers[index].name),
                       Text(teachers[index].Subject),
                    ],
                  ),
                ),
              ),
            );
        
          },
        ),
      ),
    );
  }
}
