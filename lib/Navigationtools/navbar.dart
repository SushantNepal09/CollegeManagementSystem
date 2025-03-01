import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:student/allvariables/allVar.dart';
import 'package:student/pages/profilePage.dart';


class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    // Color myColor = Color(0xFF167AFA);
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Sample Name'),
            accountEmail: Text('Example@example.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://b.fssta.com/uploads/application/soccer/headshots/713.png',
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: primaryBlue,
            ),
          ),

ListTile(
  leading: Icon(Icons.supervised_user_circle),
  title: Text('Profile'),
  onTap:() {
Navigator.push(context, MaterialPageRoute(builder: (context)=>
MyProfile(),
));


  },
),
ListTile(
  leading: Icon(Icons.notifications_active),
  title: Text('notifications'),
  onTap:() => log('hello'),
),


Divider(),

ListTile(
  leading: Icon(Icons.lock_clock_outlined),
  title: Text('Reset Password'),
  onTap:() {},
),
ListTile(
  leading: Icon(Icons.settings),
  title: Text('Settings'),
  onTap:() {},
),
ListTile(
  leading: Icon(Icons.logout),
  title: Text('Logout'),
  onTap:() {},
),
Divider(),
AboutListTile(
icon: Icon(Icons.info),
applicationIcon: FlutterLogo(),
applicationLegalese: 'Trademarked By M.A.S.S Company',
applicationName: 'App',
applicationVersion: '1.0.0',
aboutBoxChildren: [
   
  Center(child: Text("This App is licensed",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 12),)),

],
)


        ],
      ),
    );
  }
}
