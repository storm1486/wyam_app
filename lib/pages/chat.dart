import 'package:flutter/material.dart';

import '../services/chatPage.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
        children: [
          Expanded(child: ChatPage()),

    ],
        ),
    );
  }
}
