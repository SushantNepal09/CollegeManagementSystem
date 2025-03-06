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

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(60.0),
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
                  child: CircleAvatar(
                    radius: 35,
                    child: ClipOval(
                      child: Image.network(
                        "https://b.fssta.com/uploads/application/soccer/headshots/713.png",
                        fit: BoxFit.cover,
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
                        FontWeight.w200,fontSize: 13),),
                        Text(" Rollno :09(Nine) | Symbolno:79011501",style: TextStyle(color: const Color.fromARGB(255, 31, 1, 1),fontWeight: 
                        FontWeight.w200,fontSize: 13),),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: Divider(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25,right: 25),
                      child: Text(
                          "This is the information about the student. it shows all the required details of this student "),
                    ),
                  ],
                ),
               
              ],
            ),
          ),
        ],
      ),
      // body: Center(child: Text('Profile')),
    ));
  }
}
