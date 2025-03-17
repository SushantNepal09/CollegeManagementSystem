import 'package:flutter/material.dart';

class Paydone extends StatefulWidget {
  const Paydone({super.key});

  @override
  State<Paydone> createState() => _PaydoneState();
}

class _PaydoneState extends State<Paydone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Done'),
      ),

      body: Center(child: Text('Payment Successful')),
    );
  }
}