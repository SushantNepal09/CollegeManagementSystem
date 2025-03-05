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
                  border: Border.all(width: 1,),
                  borderRadius: BorderRadius.circular(20),
                   color: const Color.fromARGB(255, 255, 255, 255),
                ),
                         
              height: 200,
              
              width: double.infinity,
              
              ),

                 Positioned(
              top:-35,
              
              
              child:  CircleAvatar(
                radius: 35,
            child: ClipOval(
              child: Image.network("https://b.fssta.com/uploads/application/soccer/headshots/713.png",fit: BoxFit.cover,),
            ),
            
            ), ),






              ],
                      
            ),
          ),
        ],
      ),
      // body: Center(child: Text('Profile')),
    ));
  }
}
