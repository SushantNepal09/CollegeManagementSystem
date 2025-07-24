import 'package:flutter/material.dart';

class MyResults extends StatelessWidget {
  const MyResults({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20,left: 15,right: 15),
      child: Container(
        decoration: BoxDecoration(
boxShadow:[
    BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.15),
          blurRadius: 2.6,
          spreadRadius: 0,
          offset: Offset(
             1.95,
             1.95,
          ),
       ),
       
]
  
  
  
  ,
 color: const Color.fromARGB(255, 255, 255, 255),
 borderRadius: BorderRadius.circular(15)
 
        ),
        
      height: 150,
     
      
      
      ),
    );
  }
}