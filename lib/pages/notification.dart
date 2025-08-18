import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final List<Map<String, dynamic>> notifications = [
  {
    'type': 'success',
    'title': 'Payment Successful',
    'message': 'Your payment of \Rs15,000 has been processed.',
    'time': DateTime.now().subtract(Duration(minutes: 5))
  },
  {
    'type': 'warning',
    'title': 'Fees Deadline',
    'message': 'Your Fee payment Deadline is approaching',
    'time': DateTime.now().subtract(Duration(hours: 1))
  },
  {
    'type': 'info',
    'title': 'New Feature Available',
    'message': 'Check out the new dark mode in settings.',
    'time': DateTime.now().subtract(Duration(days: 1))
  },
  {
    'type': 'holiday',
    'title': 'Holiday Notice',
    'message': 'College will be closed on Bhadra 12th',
    'time': DateTime.now().subtract(Duration(days: 1))
  },
];

class NotificationPage extends StatefulWidget {
  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  IconData _getIcon(String type) {
    switch (type) {
      case 'success':
        return Icons.check_circle;
      case 'warning':
        return Icons.warning;
      case 'error':
        return Icons.error;
      case 'holiday':
        return Icons.calendar_month;
      default:
        return Icons.notifications;
    }
  }

  Color _getColor(String type) {
    switch (type) {
      case 'success':
        return Colors.green;
      case 'warning':
        return Colors.orange;
      case 'error':
        return Colors.red;
      case 'holiday':
        return Colors.red;
      default:
        return Colors.blue;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        actions: [
          IconButton(
            icon: Icon(Icons.delete_sweep),
            onPressed: () {
              setState(() {
                notifications.length = notifications.length - notifications.length;
              });
            },
          )
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final item = notifications[index];
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: Icon(
                _getIcon(item['type']),
                color: _getColor(item['type']),
                size: 32,
              ),
              title: Text(
                item['title'],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item['message']),
                     Text(
                      DateFormat('hh:mm a').format(item['time']),
                      style: TextStyle(fontSize: 12, color: Colors.grey,fontWeight: FontWeight.bold),
                   
                    ),
                ],
              ),


              trailing: Icon(Icons.delete,color: Colors.red,),
              onTap: () {
                // Open notification details
              },
            ),
          );
        },
      ),
    );
  }
}
