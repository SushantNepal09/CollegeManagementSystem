
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NotificationPage extends StatelessWidget {
  final List<Map<String, dynamic>> notifications = [
    {
      'type': 'success',
      'title': 'Payment Successful',
      'message': 'Your payment of \$150 has been processed.',
      'time': DateTime.now().subtract(Duration(minutes: 5))
    },
    {
      'type': 'warning',
      'title': 'Low Balance',
      'message': 'Your wallet balance is running low.',
      'time': DateTime.now().subtract(Duration(hours: 1))
    },
    {
      'type': 'info',
      'title': 'New Feature Available',
      'message': 'Check out the new dark mode in settings.',
      'time': DateTime.now().subtract(Duration(days: 1))
    },
  ];

  IconData _getIcon(String type) {
    switch (type) {
      case 'success':
        return Icons.check_circle;
      case 'warning':
        return Icons.warning;
      case 'error':
        return Icons.error;
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
              // Clear all notifications
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
              subtitle: Text(item['message']),
              trailing: Text(
                DateFormat('hh:mm a').format(item['time']),
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
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

