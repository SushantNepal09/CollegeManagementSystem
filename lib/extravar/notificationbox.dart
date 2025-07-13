import 'package:flutter/material.dart';
import 'package:student/allvariables/notificlist.dart';

class Square extends StatelessWidget {
  final String child;

  const Square({super.key,required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15,left: 10,right: 10),
      child: Container(
        height: 60,
        width: 200,
        
        decoration: BoxDecoration(
          
                    borderRadius: BorderRadius.circular(10),
          color: Colors.red,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(child: Text(child,style: TextStyle(fontSize: 30,color: Colors.white),
            
            )
            
            
            ),
Row(

children: [


   IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
             IconButton(onPressed: (){}, icon: Icon(Icons.delete))
],
)

           
          ],
        ),
      ),
    );
  }
}
