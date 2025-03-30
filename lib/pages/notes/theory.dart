import 'package:flutter/material.dart';
import 'package:student/allvariables/allVar.dart';
import 'package:student/allvariables/notescontent.dart';

class Theory extends StatelessWidget {
  const Theory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Theory Notes",
          style: TextStyle(color: Colors.white),
        )),
        backgroundColor: primaryBlue,
      ),
      body: ListView.builder(
        itemCount: allNotes.length, //how may items , i have set the no of items is equal to the lenght of the item count in the class i created
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(  //this is the list tile container beacuse listile doesnot provide colorproperty
              decoration: BoxDecoration(  
                  color: listTileColor,
                  borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                leading: Container(  //this is a container for line in front for decoration purpose
                  height: 100,
                  width: 5,
                  color: Colors.blue,
                ),
                trailing:
                    Container( // this is for the download icon
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
borderRadius: BorderRadius.circular(40),
color: const Color.fromARGB(255, 253, 253, 253)
                      ),
                      
                      child: IconButton(onPressed: () {}, icon: Icon(Icons.download),color: Colors.black,)),
                selectedTileColor: Colors.blue,
                title: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(allNotes[index].SubName,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(allNotes[index].Topic,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.black),), //called from thee class
                      Text(allNotes[index].Date,style: TextStyle(fontSize: 12,color: Colors.black),),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
