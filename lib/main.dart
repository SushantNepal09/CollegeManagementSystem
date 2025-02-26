import 'package:flutter/material.dart';
import 'package:student/allvariables/allVar.dart';
import 'package:student/dashboard/dashboard.dart';
import 'package:student/pages/notification.dart';
import 'package:student/pages/profilePage.dart';
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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'Notifications': (context) => NotificationPage(),
      },
      debugShowCheckedModeBanner: true,
      home: Builder(
        builder: (context) => Scaffold(
          drawer: Navbar(),
          appBar: AppBar(
            backgroundColor: primaryBlue,
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('Notifications');
                  },
                  icon: Icon(
                    Icons.notifications,
                    size: 28,
                  ))
            ],
            title: Center(child: Text('Student')),
          ),
          body: Dashboard(),
        ),
      ),
    );
  }
}
