import 'package:flutter/material.dart';
import 'package:student/allvariables/allVar.dart';
import 'package:student/allvariables/allresults.dart';

class MyResults extends StatelessWidget {
  final dynamic index;

  const MyResults({super.key,required this.index});

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
                        examresult[index].subjectname,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w700,color: Colors.black),
                      ),
                      Text(
                        examresult[index].subjectcode,
                        style: TextStyle(fontSize: 10, color: Colors.grey),
                      )
                    ],
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(
                            color: Colors.blue,
                            width: 1,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(
                        child: Text(
                       examresult[index].grade,
                      style: TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.w500),
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Date',
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                         examresult[index].date,
                        style: TextStyle(
                            fontSize: 11, fontWeight: FontWeight.w500,color: Colors.black),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Percentage',
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        examresult[index].percentage,
                        style: TextStyle(
                            fontSize: 11, fontWeight: FontWeight.w500,color: Colors.black),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Status',
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        examresult[index].status,
                        style: TextStyle(
                            fontSize: 11, fontWeight: FontWeight.w500,color: Colors.black),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 15,),
              SizedBox(
                
                width: 135,
                // the method to download and open file is done using this youtube video = "www.youtube.com/watch?v=6tfBflFUO7s"
                child: OutlinedButton(onPressed: () {}
                
                , child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.download,color: Colors.blue,),
                    Text('Download',style: TextStyle(color: Colors.blue),),
                  ],
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
