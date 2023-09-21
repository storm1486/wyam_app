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
  String? selectedType;

  void _onTypeSelected(String type) {
    setState(() {
      if (selectedType == type) {
        selectedType = null;
      } else {
        selectedType = type;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SafeArea(child: Search()),
            // scroller feature
            HorizontalScroller(
              items: const [
                'All',
                'Food',
                'Shelter',
                'Hygiene',
                'Health',
                'Work & Learn',
                'Finance',
                'Other',
              ],
              onItemSelected: _onTypeSelected,
            ),

            Expanded(
              child: ChooseLocation(selectedType: selectedType,),
            ),
          ],
        ),
    );
  }
}
