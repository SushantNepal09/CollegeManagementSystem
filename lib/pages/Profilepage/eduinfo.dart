import 'package:flutter/material.dart';
import 'package:student/allvariables/allVar.dart';
import 'package:student/pages/Profilepage/listtile2.dart';
import 'package:student/pages/Profilepage/profinfoeditcontainer.dart';

class Eduinfo extends StatefulWidget {
  const Eduinfo({super.key});

  @override
  State<Eduinfo> createState() => _EduinfoState();
}

class _EduinfoState extends State<Eduinfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: primaryBlue,
          title: Center(
            child: Text(
              'Education Info',
              style: TextStyle(color: Colors.white),
              
            ),
          ),
          actions: [Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.edit,color: Colors.white,),
          )],
        ),
        body: Column(
          children: [
             
            SizedBox(height: 20,),
            ListTiles1(title1: 'Course', subtitle: 'Bsc.CSIT',icon11: Icon(Icons.book_rounded,color: Colors.black,),),
             SizedBox(height: 20,),
            ListTiles1(title1: 'Semester', subtitle: '6th',icon11: Icon(Icons.alarm,color: Colors.black,),),
             SizedBox(height: 20,),
            ListTiles1(title1: 'Avg.Grade', subtitle: '3.60',icon11: Icon(Icons.school,color: Colors.black,),),
              
         
                  SizedBox(height: 20,),
            ListTiles1(title1: 'Batch', subtitle: '2079',icon11: Icon(Icons.calendar_today,color: Colors.black,),),
               SizedBox(
                height: 20,
               ),
               Text('Other Info' , style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),),
                        SizedBox(height: 20,),
            ListTiles2(title1: 'Scholarship', subtitle: 'Applicable',icon11: Icon(Icons.star,color: Colors.blue,),), 
            SizedBox(height: 20),
             ListTiles2(title1: 'Major Projects', subtitle: 'CMS,E-Commerce App',icon11: Icon(Icons.computer,color: Colors.blue,),), 
    SizedBox(height: 20,),
            ListTiles2(title1: 'Extra Curricular', subtitle: 'General Member UCS',icon11: Icon(Icons.ballot,color: Colors.blue,),),

          ],
        ));
  }
}
