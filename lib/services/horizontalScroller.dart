import 'package:flutter/material.dart';

class HorizontalScroller extends StatelessWidget {
  final List<String> items; // Add a parameter for the list of items

  const HorizontalScroller({super.key, required this.items}); // Constructor

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const AlwaysScrollableScrollPhysics(),
      child: Row(
        children: items.map((item) {
          return _ScrollerItem(text: item);
        }).toList(),
      ),
    );
  }
}

class _ScrollerItem extends StatefulWidget {
  final String text;

  const _ScrollerItem({super.key, required this.text});

  @override
  State<_ScrollerItem> createState() => _ScrollerItemState();
}

class _ScrollerItemState extends State<_ScrollerItem> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected; // Toggle the selected state
        });
      },
      child: Container(
        width: 120.0, // Adjust the width as needed
        height: 50.0, // Adjust the height as needed
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? Colors.amber : Colors.transparent,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(100.0),
        ),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              fontSize: 18.0,
              color: isSelected ? Colors.amber : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
