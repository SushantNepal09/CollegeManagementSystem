import 'package:flutter/material.dart';
import 'package:student/allvariables/allVar.dart';

class Applyleave extends StatefulWidget {
  const Applyleave({super.key});

  @override
  State<Applyleave> createState() => _ApplyleaveState();
}

class _ApplyleaveState extends State<Applyleave> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  backgroundColor: primaryBlue,
  title: Text('Apply Leave',style: TextStyle(color: Colors.white),),
),
body: Column(
  children: [
Padding(
  padding: const EdgeInsets.only(top:28.0,right: 30,left: 30,bottom: 40),
  child: Container(
    decoration: BoxDecoration(
      border: Border.all(width: 1,color: Colors.grey)
    ),
    height: 90,
  child: Row(
    children: [
      Expanded(
        child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1)
        ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Total',style: TextStyle(color: const Color.fromARGB(255, 158, 151, 151),fontSize: 20,fontWeight: FontWeight.w400),),
              Text('15.0',style: TextStyle(color: Colors.lightBlueAccent,fontSize: 35,fontWeight: FontWeight.w400),)
            ],
          ),
          
          ),
      ),
       Expanded(
            child:Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1)
        ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Approved',style: TextStyle(color: const Color.fromARGB(255, 158, 151, 151),fontSize: 20,fontWeight: FontWeight.w400),),
              Text('12.0',style: TextStyle(color: const Color.fromARGB(255, 100, 207, 29),fontSize: 35,fontWeight: FontWeight.w400),)
            ],
          ),
          
          ),
       ),
    Expanded(
                   child:Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1)
        ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Rejected',style: TextStyle(color: const Color.fromARGB(255, 158, 151, 151),fontSize: 20,fontWeight: FontWeight.w400),),
              Text('3.0',style: TextStyle(color: const Color.fromARGB(255, 207, 38, 29),fontSize: 35,fontWeight: FontWeight.w400),)
            ],
          ),
          
          ),
        ),
    ],
  ),
  
  ),
),


Text('Apply Leave',style: TextStyle(color: Colors.black,fontSize: 23),),
Expanded(
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextField(
        decoration: InputDecoration(
         labelText: "Start Date",
        ),
    ),
  ),
)


  ],
),

    );
  }
}