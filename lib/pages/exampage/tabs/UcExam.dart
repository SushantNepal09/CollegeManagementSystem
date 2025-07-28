import 'package:flutter/material.dart';
import 'package:student/allvariables/allVar.dart';
import 'package:student/allvariables/allresults.dart';
import 'package:student/allvariables/upcoming.dart';

class  UcExam extends StatelessWidget {
  final dynamic index;

  const UcExam({super.key,required this.index});

  @override
  Widget build(BuildContext context) {
  
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.15),
                blurRadius: 2.6,
                spreadRadius: 0,
                offset: Offset(
                  1.95,
                  1.95,
                ),
              ),
            ],
            color: const Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(15)),
        height: 185,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                //to seperate sub name and grade
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Upcomingexam[index].subjectname1,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w700,color: Colors.black),
                      ),
                      Text(
                        Upcomingexam[index].subjectcode1,
                        style: TextStyle(fontSize: 10, color: Colors.grey),
                      )
                    ],
                  ),
                  Container(
                    height: 25,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(
                            color: Colors.blue,
                            width: 1,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text(
                       Upcomingexam[index].ExamType,
                      style: TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.w500,fontSize: 10),
                    )),
                  )
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Divider(
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Column (
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Date',
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500),
                      ),
                      //  Icon(Icons.calendar_month ,size: 16,),
                      Text(
                        Upcomingexam[index].date1,
                        style: TextStyle(
                            fontSize: 11, fontWeight: FontWeight.w500,color: Colors.black),
                      ),
                    ],
                  ),
                 Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Time',
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500),
                      ),
                      // Icon(Icons.timer ,size: 16,),
                      Text(
                        Upcomingexam[index].Time,
                        style: TextStyle(
                            fontSize: 11, fontWeight: FontWeight.w500,color: Colors.black),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Location',
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500),
                      ),
                      // Icon(Icons.location_on,size: 16,),
                      Text(
                        Upcomingexam[index].Location,
                        style: TextStyle(
                            fontSize: 11, fontWeight: FontWeight.w500,color: Colors.black),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 15,),
              SizedBox(
                
                width: double.infinity,
                // the method to download and open file is done using this youtube video = "www.youtube.com/watch?v=6tfBflFUO7s"
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OutlinedButton(onPressed: () {}
                    
                    , child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.download,color: Colors.blue,),
                        SizedBox(width: 3,),
                        Text('Syllabus',style: TextStyle(color: Colors.blue),),
                      ],
                    )),

                    ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
backgroundColor: Colors.blue

                    ), child: Text('Set Remainder',style: TextStyle(color: Colors.white),),)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
