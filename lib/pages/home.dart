import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wyam_app/services/bottomNavigator.dart';
import 'package:wyam_app/services/choose_location.dart';
import 'package:wyam_app/services/horizontalScroller.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
               Padding(
                padding: EdgeInsets.fromLTRB(6.0, 10.0, 6.0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SafeArea(
                      child:
                      Text('search bar'),
                    ),
                    SafeArea(child: Icon(CupertinoIcons.square_pencil))
                  ],
                ),
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

            // Expanded(
            //     child: BottomNavigator()
            // ),
            ],
        ),
    );
  }
}










//       ListView(
//         children: [
//           CardItem(
//             title: 'Item 1',
//             details: 'Details about Item 1',
//
//           ),
//           CardItem(
//             title: 'Item 2',
//             details: 'Details about Item 2',
//           ),
//           // Add more CardItem widgets as needed
//         ],
//       ),
//
//
// class CardItem extends StatefulWidget {
//   final String title;
//   final String details;
//
//   const CardItem({super.key, required this.title, required this.details});
//
//   @override
//   _CardItemState createState() => _CardItemState();
// }
//
// class _CardItemState extends State<CardItem> {
//   bool isExpanded = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: ListTile(
//         title: Text(widget.title),
//         onTap: () {
//           setState(() {
//             isExpanded = !isExpanded;
//           });
//         },
//         subtitle: isExpanded ? Text(widget.details) : null,
//       ),
//     );
//   }
// }
