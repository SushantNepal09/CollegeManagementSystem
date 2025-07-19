import 'package:flutter/material.dart';
import 'package:student/allvariables/allVar.dart';

class Docscard extends StatefulWidget {
  const Docscard({super.key});

  @override
  State<Docscard> createState() => _DocscardState();
}

class _DocscardState extends State<Docscard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0, left: 20, right: 20),
      child: Container(
        // height: 60,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(14),
            boxShadow: [
              BoxShadow(
                color: Colors.black12, // soft black
                spreadRadius: 1,
                blurRadius: 10,
                offset: Offset(0, 4), // subtle downward shadow
              ),
            ]),

        child: ListTile(
          leading: Icon(Icons.copy_outlined,size: 30,),
          title: Text('Transcript',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
          
          // isThreeLine: true,
          subtitle: Container(
            // color: Colors.red,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Uploaded',style: TextStyle(color: Colors.green,fontWeight: FontWeight.w400,fontSize: 14),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('View',style: TextStyle(color: Colors.blueAccent),),
                  
                    SizedBox(width:20),
                   
                    Text('Download',style: TextStyle(color: Colors.blueAccent),)
                  ],
                )
              ],
            ),
          ),


          // title: Text(
          //   widget.title1,
          //   style: TextStyle(fontSize: 14, color: const Color.fromARGB(255, 0, 0, 0),fontWeight: FontWeight.w700),
          // ),
          // subtitle: Text(
          //   widget.subtitle,
          //   style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black),
          // ),

          // trailing: IconButton(onPressed: (){}, icon: Icon(Icons.edit,)),
        ),
      ),
    );
  }
}