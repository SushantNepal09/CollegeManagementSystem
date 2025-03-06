import 'package:flutter/material.dart';
import 'package:student/allvariables/allVar.dart';
import 'package:student/allvariables/cardclick.dart';
import 'package:student/allvariables/gridcontent.dart';
import 'package:student/pages/assignments.dart/classassignments.dart';
import 'package:student/pages/assignments.dart/exam.dart';
import 'package:student/pages/fees.dart';
import 'package:student/pages/notes/practical.dart';
import 'package:student/pages/notes/theory.dart';

class GridBox extends StatefulWidget {
  const GridBox({
    super.key,
  });

  @override
  State<GridBox> createState() => _GridBoxState();
}

class _GridBoxState extends State<GridBox> {
  bool scroll = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          Container(
              height: scroll
                  ? MediaQuery.of(context).size.height * 0.45 //height of the grid box when the see all button is pressed and not pressed
                  : MediaQuery.of(context).size.height * 1.6, //1.3 ON PC 0.9 ON PHONE
              decoration: BoxDecoration(
                  color: secBlue,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: shadowColor,
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: Offset(2, 2),
                    )
                  ]),

              // height: double.infinity ,
              child: GridView.builder(
                // shrinkWrap: false,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      if (index == 0) {
                        _displayBottomSheet(context, contents[index], 0, 1);
                      }
                      if (index == 1) {
                        _displayBottomSheet(context, contents[index], 2, 3);
                      }

                      if (index == 2) {

                        // _reportsBottomsheet(context, contents[index]);
                        _displayBottomSheet(context, contents[index],6,7);
                      }

                      if (index == 3) {
                         
                        _displayBottomSheet(context, contents[index], 4, 5);
                      }
if(index==7)
{                   
Navigator.push(context, MaterialPageRoute(builder: (context)=>
Fees(),
));
                      
}


                    },
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              // ignore: deprecated_member_use
                              color: shadowColor, // Shadow color
                              spreadRadius: 2, // How much the shadow spreads
                              blurRadius: 6, // How soft the shadow looks
                              offset: Offset(
                                  4, 4), // Changes position of shadow (X, Y)
                            ),
                          ],

                          //  gradient: LinearGradient(colors: [const Color(0xFF89f7fe),Color(0xFF66a6ff)]),
                          borderRadius: BorderRadius.circular(14),
                          //  color: const Color.fromARGB(255, 255, 238, 238),
                          color: cardColor,
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.network(
                                contents[index].image,
                                fit: BoxFit.cover,
                                height: 100,
                              ),
                              Text(contents[index].title),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
                itemCount: contents.length,
              )),
          Container(
              height: 33,
              decoration: BoxDecoration(
                  color: secBlue,
                  boxShadow: [
                    BoxShadow(
                      // ignore: deprecated_member_use
                      color: const Color.fromARGB(93, 0, 0, 0), // Shadow color
                      spreadRadius: 1, // How much the shadow spreads
                      blurRadius: 2, // How soft the shadow looks
                      offset: Offset(0, 4), // Changes position of shadow (X, Y)
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.zero,
                      topRight: Radius.zero,
                      bottomLeft: Radius.circular(35),
                      bottomRight: Radius.circular(35))),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 1, right: 4, left: 4),
                child: IconButton(
                    onPressed: () {
                      setState(() {
                        // _displayBottomSheet();
                        scroll = !scroll;
                      });
                    },
                    icon: Icon(
                      scroll
                          ? Icons.arrow_downward
                          : Icons.arrow_upward_rounded,
                      color: scroll
                          ? const Color.fromARGB(255, 255, 255, 255)
                          : const Color.fromARGB(255, 255, 255, 255),
                      weight: 400,
                      size: 25,
                    )),
              ))
        ],
      ),
    );
  }

  Future _displayBottomSheet(
      BuildContext context, Content contents, int startIndex, int endIndex) {
    return showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        decoration: BoxDecoration(
            color: tertiaryBlue,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
        height: 220,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: endIndex - startIndex + 1),
          itemCount: endIndex - startIndex + 1,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => Center(
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      // ignore: deprecated_member_use
                      color: shadowColor, // Shadow color
                      spreadRadius: 2, // How much the shadow spreads
                      blurRadius: 6, // How soft the shadow looks
                      offset: Offset(4, 4), // Changes position of shadow (X, Y)
                    ),
                  ],

                  //  gradient: LinearGradient(colors: [const Color(0xFF89f7fe),Color(0xFF66a6ff)]),
                  borderRadius: BorderRadius.circular(14),
                  //  color: const Color.fromARGB(255, 255, 238, 238),
                  color: cardColor,
                ),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      if (startIndex + index == 0) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Theory()),
                        );
                      } else if (startIndex + index == 1) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Practical()),
                        );
                      } else if (startIndex + index == 2) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Classassignments()),
                        );
                      } else if (startIndex + index == 3) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Exams()),
                        );
                      }
                      else if(startIndex+ index == 6)
                      {
                         _reportsBottomsheet(context, contents);
                      }

                 
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.network(
                          materials[startIndex + index].image,
                          height: 100,
                        ),
                        Text(materials[startIndex + index].title),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future _reportsBottomsheet(BuildContext context, Content content) {
    return showModalBottomSheet(
        context: context,
        builder: (context) => Container(
          decoration: BoxDecoration(
color: const Color.fromARGB(255, 216, 249, 255),
borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
          ),
          
            height: 250,
            // width: 300,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ListView(
                children: [
                  Center(child: Text('Choose the Semester',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 255, 1, 1)),)),
                  Divider(),
                  Text('First Semester',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 0, 0, 0)),),
                  Divider(),
                  Text('Second Semester',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 0, 0, 0)),),
                     Divider(),
                  Text('Third Semester',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 0, 0, 0)),),
                     Divider(),
                  Text('Fourth Semester',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 0, 0, 0)),),
                     Divider(),
                  Text('Fifth Semester',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 0, 0, 0)),),
                     Divider(),
                  Text('Sixth Semester',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 0, 0, 0)),),
                     Divider(),
                  Text('Seventh Semester',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 0, 0, 0)),),
                     Divider(),
                  Text('Eight Semester',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 0, 0, 0)),),
                ],
              ),
            )
            
         
            
            
            
            ));
  }
}
