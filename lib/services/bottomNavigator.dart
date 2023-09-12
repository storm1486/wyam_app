import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wyam_app/pages/applications.dart';
import 'package:wyam_app/pages/settings.dart';

import '../pages/chat.dart';
import '../pages/home.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({super.key});

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int currentIndex = 0;
  final pages = [
    Home(),
    Applications(),
    Chat(),
    Settings()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: Container(
        decoration: const  BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(35.0),
          ),
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.grey[800]!,
          //     blurRadius: 100.0,
          //     blurStyle: s,
          //     offset: const Offset(10, -10),
          //   )
          // ]
        ),
        child: NavigationBar(
          backgroundColor: Colors.transparent,
          selectedIndex: currentIndex,
          onDestinationSelected: (index) => setState(() => currentIndex = index),
          destinations: const [
            NavigationDestination(
                icon: Icon(CupertinoIcons.compass),
                label: '',
            ),
            NavigationDestination(
                icon: Icon(Icons.add_circle_outline),
                label: ''
            ),
            NavigationDestination(
                icon: Icon(Icons.account_circle_outlined),
                label: ''
            ),
            NavigationDestination(
              icon: Icon(Icons.settings),
              label: ''
            ),

          ],
        ),
      ),
    );
  }
}
