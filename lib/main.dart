import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:student/allvariables/allVar.dart';
import 'package:student/dashboard/dashboard.dart';
import 'package:student/extravar/chatbutton.dart';
import 'package:student/pages/fees/fees.dart';
import 'package:student/pages/notification.dart';
import 'Navigationtools/navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
    late SharedPreferences prefs;

  @override
  void initState() {
    super.initState();
    initPrefs();
  }

  initPrefs() async {
    prefs = await SharedPreferences.getInstance();
    isPaid = prefs.getBool('isPaid')!;
   
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'Notifications': (context) => NotificationPage(),
      },
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (context) => Scaffold(
          drawer: Navbar(),
          appBar: AppBar(
            backgroundColor: primaryBlue,
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Badge(
                  isLabelVisible: true,
                  label: Text('5'),
                 
                  child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('Notifications');
                      },
                      icon: Icon(
                        Icons.notifications,
                        size: 28,
                        color: Colors.white,
                      )),
                ),
              )
            ],
            title: Center(child: Text('Student')),
          ),
          body: Dashboard(),
          floatingActionButton: Test(),
          floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        ),
      ),
   
    );
  }
}
