import 'package:flutter/material.dart';
import 'package:student/allvariables/allVar.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  bool showArea = false;
  bool isOpen = false;

  @override
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12,left: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          showArea ? ChatArea() : MyWidget(),
          SizedBox(
            height: 20,
            width: 20 ,
          ),
          FloatingActionButton(
            onPressed: () {
              //add chat area here
              setState(() {
                showArea = !showArea;
                isOpen = !isOpen;
              });
            },
            backgroundColor: tertiaryBlue,
            child: Icon(isOpen ? Icons.close:Icons.chat),
          ),
        ],
      ),
    );
  }
}

class ChatArea extends StatelessWidget {
  const ChatArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
              spreadRadius: 2,
              blurRadius: 2,
              color: const Color.fromARGB(87, 76, 76, 76),
              offset: Offset(2, 2))
        ],
        color: primaryBlue,
      ),
      height: 140,
      width: 150,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.admin_panel_settings,
                ),
                Text(
                  'Admin',
                  style: TextStyle(
                      fontSize: 20,
                      color: const Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.person_4),
                Text(
                  'Teacher',
                  style: TextStyle(
                      fontSize: 20,
                      color: const Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.family_restroom),
                Text(
                  'Parents',
                  style: TextStyle(
                      fontSize: 20,
                      color: const Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1,
      width: 1,
    );
  }
}






// class Chat2 extends StatefulWidget {
//   const Chat2({super.key});

//   @override
//   State<Chat2> createState() => _Chat2State();
// }

// class _Chat2State extends State<Chat2> {
//   @override
//   Widget build(BuildContext context) {
//     return FloatingActionButton.extended(onPressed: (){

//     }, label:Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(15),
// boxShadow: [
//   BoxShadow(
//     spreadRadius: 2,
// blurRadius: 2,
// color: const Color.fromARGB(87, 76, 76, 76) 
// ,
// offset: Offset(2, 2) )
// ],



//         color: primaryBlue,
//       ),
//       height: 140,
//       width: 150,
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: [
//               Row(
//                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Icon(Icons.admin_panel_settings,),
//                 Text(
//                   'Admin',
//                   style: TextStyle(
//                       fontSize: 20,
//                       color: const Color.fromARGB(255, 255, 255, 255),
//                       fontWeight: FontWeight.w500),
//                 ),
//               ],
//             ),
//             Divider(),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Icon(Icons.person_4),  Text(
//                   'Teacher',
//                   style: TextStyle(
//                       fontSize: 20,
//                       color: const Color.fromARGB(255, 255, 255, 255),
//                       fontWeight: FontWeight.w500),
//                 ),
//             ],
//           ),
//           Divider(),
//               Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Icon(Icons.family_restroom),  Text(
//                   'Parents',
//                   style: TextStyle(
//                       fontSize: 20,
//                       color: const Color.fromARGB(255, 255, 255, 255),
//                       fontWeight: FontWeight.w500),
//                 ),
//             ],
//           ),
            
        
//           ],
//         ),
//       ),
//     ) );
//   }
// }
