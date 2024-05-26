import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  final String message;

  const SuccessScreen({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment Success'),
      ),
      body: Center(
        child: Text(
          message,
          style: const TextStyle(fontSize: 20, color: Colors.green),
        ),
      ),
    );
  }
}
