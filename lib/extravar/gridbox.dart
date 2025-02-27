import 'package:flutter/material.dart';
import 'package:student/allvariables/allVar.dart';
import 'package:student/allvariables/gridcontent.dart';

class GridBox extends StatelessWidget {
  const GridBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
          height: MediaQuery.of(context).size.height * 0.45,
   decoration: BoxDecoration(
    color: const Color.fromARGB(255, 223, 216, 193),
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
      BoxShadow(
        color: const Color.fromARGB(93, 0, 0, 0),
        spreadRadius: 1,
        blurRadius: 2
        ,
        offset: Offset(2, 2),
      )
    ]
   ),
          
          // height: double.infinity ,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, ),
            itemBuilder: (context, index) {
              
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                     boxShadow: [
      BoxShadow(
        // ignore: deprecated_member_use
        color: const Color.fromARGB(93, 0, 0, 0), // Shadow color
        spreadRadius: 2, // How much the shadow spreads
        blurRadius: 6, // How soft the shadow looks
        offset: Offset(4, 4), // Changes position of shadow (X, Y)
      ),
          ],
      
          
                  //  gradient: LinearGradient(colors: [const Color(0xFF89f7fe),Color(0xFF66a6ff)]),
                      borderRadius: BorderRadius.circular(14),
                      //  color: const Color.fromARGB(255, 255, 238, 238),
                      color : cardColor,
                    ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.network(contents[index].image,fit: BoxFit.cover,height: 100,),
                        Text(contents[index].title),
                      ],
                    ),
                  ),
                ),
              );
            },
            itemCount: contents.length,
          )),
    );
  }
}
