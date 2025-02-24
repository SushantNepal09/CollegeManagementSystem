import 'package:flutter/material.dart';
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
  Color myColor = Color(0xFF167AFA);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        drawer: Navbar(),
          appBar: AppBar(
            backgroundColor: myColor,
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications,
                    size: 28,
                  ))
            ],
            title: Center(child: Text('Student')),
          ),
          body: Column()),
    );
  }
}
