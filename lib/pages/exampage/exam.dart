import 'package:flutter/material.dart';
import 'package:student/allvariables/allVar.dart';
import 'package:student/pages/exampage/tabs/firsttab.dart';
import 'package:student/pages/exampage/tabs/secondtab.dart';
import 'package:student/pages/exampage/tabs/thirdtab.dart';

class Exams extends StatelessWidget {
  const Exams({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController( //to use indicator we need to first wrap scaffold with DefaultTabController
      length:3, // then we should define the length of the items in the tab
      child: Scaffold(
        appBar: AppBar(
        title:Text("Exams",style: TextStyle(color: Colors.white),),
      backgroundColor: primaryBlue,
      ),
body: Column(  //then a column will be fine to display the three pages
  
  children: [
    Container(
      color: primaryBlue,
      child: TabBar( //THEN A TABBAR WIDGET WHICH TELLS WHAT TABS ARE WE ADDING TO THE TABBAR
        indicatorSize: TabBarIndicatorSize.label, //THIS IS FOR DECORATION , this will transform the indicator size according to size of the label
      indicator: UnderlineTabIndicator( //this will decorate the indicator
        borderSide: BorderSide(width: 4,color: Colors.redAccent)
      ),
      automaticIndicatorColorAdjustment: true
      
        ,tabs: [ //these are the tabs that will show
      Tab(icon: Icon(Icons.home,color: Colors.white,),child: Text("Hom",style: TextStyle(color: Colors.white,),),),
      Tab(icon: Icon(Icons.settings,color: Colors.white),child: Text("Setting",style: TextStyle(color: Colors.white,),),),
      Tab(icon: Icon(Icons.help_outline,color: Colors.white),child: Text("Help",style: TextStyle(color: Colors.white,),),)
      
      
      ]),

      
    ),
    Expanded( //these are the container where we have the main content
      child: TabBarView(children: [
     Firsttab(),
     Secondtab(),
     Thirdtab(),
    
    
      ]),
    )
  ],
),

      ),
      
    );
  }
}