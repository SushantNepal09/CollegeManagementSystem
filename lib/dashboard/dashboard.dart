import 'package:flutter/material.dart';
import 'package:student/allvariables/allVar.dart';


class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Column(
children: [
Center(
  child: Padding(
    padding: const EdgeInsets.only(bottom: 20,top: 20,left: 50,right: 50),
    child: Container(
    height: 150,
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
     color: primaryBlue, 
    ),
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
     
        children: [
Column(
   crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text('Hello Sushant',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w400)),
    Text('Bsc.CSIT | 5th Semester | Rollno : 09',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w200)),
  ],
),


GestureDetector(
  onTap: ()=> (){},
  child: CircleAvatar(
    
    maxRadius: 30,
    child: ClipOval(child: Image.network('https://b.fssta.com/uploads/application/soccer/headshots/713.png')),
    
    
  ),
)


          
          
         
      
        ],
        
        
      ),
    ),
    
   
  
    
    ),
  ),
),




],



    );
  }
}