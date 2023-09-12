import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wyam_app/services/choose_location.dart';
import 'package:wyam_app/services/horizontalScroller.dart';

import '../services/searchBar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SafeArea(
                  child: Search()
              ),
               SizedBox(height: 25.0),
              // scroller feature
               HorizontalScroller(
                 items: [
                   'All',
                   'Food',
                   'Shelter',
                   'Hygiene',
                   'Health',
                   'Work & Learn',
                   'Finance',
                   'Other',
                 ],
               ),
               Expanded(
                 child: ChooseLocation(),
              ),
            ],
        ),
    );
  }
}
