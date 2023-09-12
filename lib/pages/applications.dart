import 'package:flutter/material.dart';

import '../services/searchBar.dart';

class Applications extends StatelessWidget {
  const Applications({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
            SafeArea(child: Search(),),
            Center(child: Text('application page', style: TextStyle(fontSize: 48.0)))

        ],
      )
    );
  }
}
