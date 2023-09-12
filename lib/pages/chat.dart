import 'package:flutter/material.dart';

import '../services/searchBar.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
        children: [
        SafeArea(child: Search()),
    Center(child: Text('Chat Page', style: TextStyle(fontSize: 48.0)))

    ],
        ),
    );
  }
}
