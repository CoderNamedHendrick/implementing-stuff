import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/model/user_model.dart';

class ChatScreen extends StatefulWidget {
  final User user;
  const ChatScreen({Key key, this.user}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
