import 'package:flutter/material.dart';
import 'package:student/allvariables/notificlist.dart';
import 'package:student/extravar/notificationbox.dart';

class NotificationPage extends StatefulWidget {


  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Notifications')),
      ),
      body: Center(
      //     child: ListView.builder(
      //   itemCount: myNotifications.length,
      //   itemBuilder: (context, index) {
      //     return Square(child: myNotifications[index],);
      //   },
      // )
     child: Text("Notifications"),
      
      ),
    );
  }
}
