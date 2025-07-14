import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:student/allvariables/allVar.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          
      appBar: AppBar(
        
        title: Text(
                  "Profile",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
                ),
        backgroundColor: primaryBlue,
      ),

      body: Column(
        children: [
          Container(
            height: 230,
            color: primaryBlue,
           child: Column(
           
             children: [
               Center(
           child: CircleAvatar(
             radius: 40,
             child: ClipOval(
           child: Image(
             width: 80,
             height: 80,
             fit:BoxFit.cover,
             
             
             image: AssetImage('assets/profilepic.png')),
           
             ),
           ),
               ),
          Text("Mr. Sushant Nepal",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w400),),
          Text("Student",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w300),),
          Text("Bsc.Csit 2079",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400),),
          
          
          Padding(
            padding: const EdgeInsets.only(top:40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              
            Row(
            
              children: [
          Icon(Icons.email,color: Colors.white,size: 16,),
          SizedBox(width: 5,),
          Text("sushant.nepal@gmail.com",style: TextStyle(color: Colors.white,fontSize: 12),),
              ],
            ),
            Row(
              children: [
          Icon(Icons.phone,color: Colors.white,size: 16,),
          Text("+9779861110111",style: TextStyle(color: Colors.white,fontSize: 12),),
              ],
            ),
            
            ],
            
            
            ),
          ),
          
             
             ],
           ),
           
           
          ),

          
        ],
      ),




    )
    
    
    
    );

  



  }

}
