import 'package:flutter/material.dart';
import 'package:student/allvariables/allVar.dart';

class Chatbutton extends StatefulWidget {
  const Chatbutton({super.key});

  @override
  State<Chatbutton> createState() => _ChatbuttonState();
}

class _ChatbuttonState extends State<Chatbutton> {
  bool showArea = true;
  @override
  Widget build(BuildContext context) {
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
         ChatArea(),
        Padding(
            padding:
                const EdgeInsets.only(bottom: 15, top: 8, left: 8, right: 25),
            child: FloatingActionButton(
              onPressed: () {
//add chat area here
                
              },
              backgroundColor: primaryBlue,
              child: Icon(Icons.chat),
            )),

           
      ],
    );
  }
}

class ChatArea extends StatelessWidget {
  const ChatArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(255, 255, 255, 255)
        ,      ),
      // height: 50,

width: 150,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text('Teacher',style: TextStyle(fontSize: 18,color: Colors.white,),),
            Divider(),
            Text('Admin')
          ],
        ),
      ),

    );
  }
}
