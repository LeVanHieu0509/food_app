import 'package:flutter/material.dart';

class MessageTile extends StatelessWidget {
  final String message;

  const MessageTile({required this.message, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        message,
        style: TextStyle(fontSize: 16, color: Colors.red),
      ),
    );
  }
}
