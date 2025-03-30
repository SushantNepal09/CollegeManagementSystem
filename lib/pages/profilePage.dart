import 'package:flutter/material.dart';
import 'package:student/allvariables/allVar.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Profile",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        )),
        backgroundColor: primaryBlue,
      ),

      body: SingleChildScrollView(
        child: Column(
          
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60,left: 35,right: 35),
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      // border: Border.all(width: 1,),
                      boxShadow: [
                        BoxShadow(
                            color: shadowColor,
                            blurRadius: 2,
                            spreadRadius: 2,
                            offset: Offset(2, 2))
                      ],
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    height: 200,
                    width: double.infinity,
                  ),
                  Positioned(
                    top: -35,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: const Color.fromARGB(255, 0, 0, 0),
 
                        ),
                        borderRadius: BorderRadius.circular(37),
                       
                      ),
                      child: CircleAvatar(
                        
                        radius: 34,
                        child: ClipOval(
                

                          child: Image(image: AssetImage('assets/profilepic.png'),fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                  )
                  ,
                  Column(
                   
                    children: [
                      
                       Text("Sushant Nepal",style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0),fontWeight: FontWeight.bold,fontSize: 16),),
                      Text(
                          "Bsc.CSIT 5th Semester",style: TextStyle(color: const Color.fromARGB(255, 18, 0, 0),fontWeight: 
                          FontWeight.w300,fontSize: 14),),
                          Text(" Rollno: Nine(09)",style: TextStyle(color: const Color.fromARGB(255, 31, 1, 1),fontWeight: 
                          FontWeight.w300,fontSize: 14),),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Divider(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 45,right: 45),
                        child: Text(
                            "This is the information about the student. it shows all the required details of this student ",style: TextStyle(color: Colors.black),),
                      ),
                    ],
                  ),
        
        
        
        
        
        
        
        
        
        
                 
                ],
              ),
            ),
        
        Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Text("Student Details",style: TextStyle(color: const Color.fromARGB(255, 221, 155, 155),fontSize: 20,fontWeight: FontWeight.w500),),
        ),
        
            Padding(  //this is the bigger container at the bottom
             padding: const EdgeInsets.only(top: 20,left: 35,right: 35),
              child: Container(
              height: MediaQuery.of(context).size.height*0.45,
              width: double.infinity,
              decoration: BoxDecoration(
        
         color: Colors.white,
         borderRadius: BorderRadius.circular(20),
         boxShadow: [
          BoxShadow(
                            color: shadowColor,
                            blurRadius: 2,
                            spreadRadius: 2,
                            offset: Offset(2, 2))
         ]
        
              ),
        
        
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        
        
        Padding(   //padding is for left and right spaces
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Row(  //this is for creating space between the topic and details horizontally
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
        Text("Symbol no:",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.black),),
        Text("79011501",style: TextStyle(fontWeight: FontWeight.w400,color: const Color.fromARGB(255, 53, 53, 53),fontSize: 16),)
            ],
          ),
        ),
        
        Padding(   //padding is for left and right spaces
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Row(  //this is for creating space between the topic and details horizontally
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
        Text("Date-of-Birth",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.black),),
        Text("2003-02-05",style: TextStyle(fontWeight: FontWeight.w400,color: const Color.fromARGB(255, 60, 60, 60),fontSize: 16),)
            ],
          ),
        ),
        Padding(   //padding is for left and right spaces
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Row(  //this is for creating space between the topic and details horizontally
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
        Text("Class",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.black),),
        Text("Csit 5th Sem",style: TextStyle(fontWeight: FontWeight.w400,color: const Color.fromARGB(255, 60, 60, 60),fontSize: 16),)
            ],
          ),
        ),
        Padding(   //padding is for left and right spaces
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Row(  //this is for creating space between the topic and details horizontally
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
        Text("Phone no",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.black),),
        Text("9854000000",style: TextStyle(fontWeight: FontWeight.w400,color: const Color.fromARGB(255, 60, 60, 60),fontSize: 16),)
            ],
          ),
        ),
        Padding(   //padding is for left and right spaces
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Row(  //this is for creating space between the topic and details horizontally
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
        Text("Parent's Name",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.black),),
        Text("Parent's Name 123",style: TextStyle(fontWeight: FontWeight.w400,color: const Color.fromARGB(255, 60, 60, 60),fontSize: 16),)
            ],
          ),
        ),
        Padding(   //padding is for left and right spaces
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Row(  //this is for creating space between the topic and details horizontally
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
        Text("Address",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.black),),
        Text("Baliya-4,Sundarharicha",style: TextStyle(fontWeight: FontWeight.w400,color: const Color.fromARGB(255, 60, 60, 60),fontSize: 16),)
            ],
          ),
        ),
        
        
        
        
        ],
        
        
              ),
             
              
              
              ),
            ),
          ],
        ),
      ),
      // body: Center(child: Text('Profile')),
    ));
  }
}
