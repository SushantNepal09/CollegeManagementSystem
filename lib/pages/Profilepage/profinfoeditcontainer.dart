//this is for the the list tiles below the profile edit page each list tile is taken from here

import 'package:flutter/material.dart';

class ListTiles1 extends StatefulWidget {
  final dynamic title1;
  final dynamic subtitle;
  final dynamic icon11;
  const ListTiles1(
      {super.key, required this.title1, required this.subtitle, this.icon11});

  @override
  State<ListTiles1> createState() => _ListTiles1State();
}

class _ListTiles1State extends State<ListTiles1> {
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
          leading: widget.icon11,
          // title: Text('First Name',style: TextStyle(fontSize: 12),),
          title: Text(
            widget.title1,
            style: TextStyle(fontSize: 14, color: Colors.blueAccent,fontWeight: FontWeight.w500),
          ),
          subtitle: Text(
            widget.subtitle,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,color: Colors.black),
          ),

          // trailing: IconButton(onPressed: (){}, icon: Icon(Icons.edit,)),
        ),
      ),
    );
  }
}


