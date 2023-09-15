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
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0)
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            onTap: (index) => setState(() => currentIndex = index),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.compass),
                label: '',
                activeIcon: Icon(CupertinoIcons.compass, color: Colors.amber)
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add_circle_outline),
                label: '',
                activeIcon: Icon(Icons.add_circle_outline, color: Colors.amber)
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined),
                label: '',
                activeIcon: Icon(Icons.account_circle_outlined, color: Colors.amber)
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: '',
                activeIcon: Icon(Icons.settings, color: Colors.amber)
              ),
            ],
          ),
        )
      ),
    );
  }
}