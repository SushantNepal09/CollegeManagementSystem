import 'package:flutter/material.dart';
import 'package:student/allvariables/allVar.dart';
import 'package:student/pages/Profilepage/docscard.dart';

class Documents extends StatefulWidget {
  const Documents({super.key});

  @override
  State<Documents> createState() => _DocumentsState();
}

class _DocumentsState extends State<Documents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: primaryBlue,
          title: Text(
            'Documents',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            Padding(
                padding: const EdgeInsets.only(right: 12),
                child: IconButton(onPressed: () {




                  
                }, icon: Icon(Icons.add_circle_outline_rounded,color: Colors.white,size: 30,),))
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Documents',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  )),
            ),
            Docscard(
              maintitle: 'Transcript',
              currentcondtion: 'Uploaded',
              whaticon: Icon(
                Icons.description,
                size: 30,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Docscard(
              maintitle: 'Idcard',
              currentcondtion: 'Uploaded',
              whaticon: Icon(
                Icons.badge,
                size: 30,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Docscard(
              maintitle: 'Result',
              currentcondtion: 'Uploaded',
              whaticon: Icon(
                Icons.bar_chart,
                size: 30,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Docscard(
              maintitle: 'Admitcard',
              currentcondtion: 'Uploaded',
              whaticon: Icon(
                Icons.contact_emergency,
                size: 30,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Docscard(
              maintitle: 'Citizenship',
              currentcondtion: 'Uploaded',
              whaticon: Icon(
                Icons.account_box,
                size: 30,
              ),
            ),
          ],
        ));
  }
}
