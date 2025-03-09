import 'dart:math';

import 'package:flutter/material.dart';
import 'package:student/allvariables/allVar.dart';
import 'package:student/allvariables/feedata.dart';

class Fees extends StatelessWidget {
  const Fees({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryBlue,
        title: Center(
            child: Text(
          "Fee Details",
          style: TextStyle(color: Colors.white),
        )),
      ),
      body: Column(
        //this is for the whole page
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey, //color looks better then box shadow
                  ),
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 255, 255, 255)),
              child: Column(
                //this is for the contents inside the first container
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20, left: 15, right: 15, bottom: 0),
                    child: Row(
                      // row for presenting the texts in horizontal direction
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "School Fee For April",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              letterSpacing: 1,
                              color: const Color.fromARGB(255, 77, 77, 77)),
                        ),
                        Text(
                          "07 April",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: const Color.fromARGB(255, 77, 77, 77)),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                        top: 2, left: 15, right: 15, bottom: 10),
                    child: Row(
                      // row for presenting the texts in horizontal direction

                      children: [
                        Text(
                          "Rs 25,000",
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 15),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 25,
                            width: 65,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.red),
                            child: Center(
                              child: Text("Pending",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12)),
                            ))
                      ],
                    ),
                  ),

                  Divider(),

                Expanded(
                 
                    child: ListView.builder(
                    
                      itemCount: allCosts.length,
                      itemBuilder: (context, index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(allCosts[index].title),
                                Text(allCosts[index].cost),
                              ],
                            )
                          ],
                        );
                      },
                    ),
                  )

//use List view.builder
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
