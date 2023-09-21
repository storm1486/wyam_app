import 'package:flutter/material.dart';

class HorizontalScroller extends StatefulWidget {
  final List<String> items; // Add a parameter for the list of items
  final Function(String) onItemSelected;

  const HorizontalScroller({super.key, required this.items, required this.onItemSelected});
  @override
  State<HorizontalScroller> createState() => _HorizontalScrollerState();
}

class _HorizontalScrollerState extends State<HorizontalScroller> {
  String? selectedItem;

  void _onItemTap(String item) {
    setState(() {
      selectedItem = item == selectedItem ? null : item;
    });
    widget.onItemSelected(item);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const AlwaysScrollableScrollPhysics(),
      child: Row(
        children: widget.items.map((item) {
          return _ScrollerItem(
            text: item,
            isSelected: item == selectedItem,
            onTap: () => _onItemTap(item),
          );
        }).toList(),
      ),
    );
  }
}

class _ScrollerItem extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const _ScrollerItem({required this.text, required this.onTap, required this.isSelected});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
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
            text,
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
