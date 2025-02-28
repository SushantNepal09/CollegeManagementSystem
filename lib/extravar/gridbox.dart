import 'package:flutter/material.dart';
import 'package:student/allvariables/allVar.dart';
import 'package:student/allvariables/gridcontent.dart';

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



              height: scroll ? MediaQuery.of(context).size.height * 0.45: MediaQuery.of(context).size.height * 0.90,
              decoration: BoxDecoration(
                  color: secBlue,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(93, 0, 0, 0),
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
                  return Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            // ignore: deprecated_member_use
                            color: const Color.fromARGB(
                                93, 0, 0, 0), // Shadow color
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
                  );
                },
                itemCount: contents.length,
              )),
          Container(
              height: 33,
              decoration: BoxDecoration(
                  color: secBlue
                  ,
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
                        scroll = !scroll;
                      });
                    },
                    icon: Icon(

                      scroll?
                      Icons.arrow_downward:Icons.arrow_upward_rounded,
                    color :  scroll? 
                        const Color.fromARGB(255, 64, 166, 200):const Color.fromARGB(255, 0, 0, 0) ,
                        weight: 400 ,
                      size: 25,
                    )),
              ))
        ],
      ),
    );
  }
}
