import 'package:flutter/material.dart';
import 'package:food_app/chat/chat-gpt-service.dart';
import 'package:food_app/widgets/messege-title/index.dart';

class ChatScreen extends StatefulWidget {
  static String routeName = "/chat_gpt";
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  final List<String> _messages = [];

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  void _sendMessage(String message) async {
    setState(() {
      _messages.add(message);
    });
    final response = await ChatGptService.getResponse(message);
    setState(() {
      print(response);
      _messages.add(response);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat with ChatGPT'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (BuildContext context, int index) {
                return MessageTile(message: _messages[index]);
              },
            ),
          ),
          TextField(
            controller: _textEditingController,
            onSubmitted: _sendMessage,
            decoration: InputDecoration(
              hintText: 'Type your message here...',
              contentPadding: const EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 15.0,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
