import 'package:flutter/material.dart';
import 'package:student/allvariables/allVar.dart';

import 'package:student/extravar/GridBox.dart';
import 'package:student/extravar/chatbutton.dart';

import 'package:student/pages/profilePage.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    // var arrColors = [
    //   Colors.red,
    //   Colors.orange,
    //   Colors.blue,
    //   Colors.cyan,
    //   Colors.purple,
    //   Colors.green,
    //   Colors.lime,
    // ]; //temporary Colors

    return Builder(builder: (context) {
      return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                    bottom: 20, top: 20, left: 30, right: 30),
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
                            Text('Hello Sushant',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400)),
                            Text('Bsc.CSIT | 5th Semester | Rollno : 09',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w200)),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        MyProfile())); // not Currently working
                          },
                          child: CircleAvatar(
                            maxRadius: 30,
                            child: ClipOval(
                                child: Image.network(
                                    'https://b.fssta.com/uploads/application/soccer/headshots/713.png')),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding:
                  const EdgeInsets.only(bottom: 8, top: 8, left: 12, right: 12),
              child: SizedBox(
                height: 30,
                // color: Colors.orange,
                child: Text(
                  'Explore Categories',
                  style:
                      TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
              ),
            ), //this is a container for the appbar like structure which includes Explore Categories and See All


GridBox(),
 //this the box which contains all the items in the grid





          ],
        ),
      );
    });
  }
}
