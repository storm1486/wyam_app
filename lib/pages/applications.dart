import 'package:flutter/material.dart';

import '../services/searchBar.dart';

class Applications extends StatefulWidget {
  @override
  _ApplicationsState createState() => _ApplicationsState();
}

class _ApplicationsState extends State<Applications> with TickerProviderStateMixin {
  String selectedWord = '';
  bool isDropdownVisible = false;

  List<String> words = [
    'Food Benefits',
    'Health Insurance',
    'Cash Assistance',
    'Affordable Housing',
    'Job Placement',
    'Continuing Education',
    'Disability Assistance'
  ];

  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Create an AnimationController for the rotation animation
    _controller = AnimationController(
      duration: Duration(milliseconds: 200),
      vsync: this, // Using TickerProviderStateMixin for animation
    );

    // Create an animation that interpolates from 0 to 0.25 (90 degrees)
    _animation = Tween<double>(
      begin: 0,
      end: 0.25, // 0.25 represents 90 degrees
    ).animate(_controller);
  }

  @override
  void dispose() {
    // Dispose of the animation controller to free up resources
    _controller.dispose();
    super.dispose();
  }

  // Function to toggle the visibility of the dropdown
  void _toggleDropdown() {
    setState(() {
      isDropdownVisible = !isDropdownVisible;

      // Animate the arrow icon rotation when the dropdown is toggled
      if (isDropdownVisible) {
        _controller.forward(); // Rotate arrow icon to 90 degrees
      } else {
        _controller.reverse(); // Rotate arrow icon back to 0 degrees
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SafeArea(child: Search()), //Search Bar at the top of the page
          InkWell(
            onTap: _toggleDropdown, // Trigger dropdown visibility on tap
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Applications',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.blue[900],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  RotationTransition(
                    turns: _animation, // Apply rotation animation to the arrow icon
                    child: Icon(Icons.keyboard_arrow_right, color: Colors.blue[900], size: 35.0),
                  ),
                ],
              ),
            ),
          ),
          Visibility(
            visible: isDropdownVisible, // Show/hide the dropdown based on visibility
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.transparent),
                borderRadius: BorderRadius.circular(4),
              ),
              child: ListView(
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                shrinkWrap: true,
                children: words.map((word) {
                  return ListTile(
                      title: Text(
                        word,
                        style: TextStyle(
                          color: Colors.blue[900],
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          selectedWord = word;
                          isDropdownVisible = false;
                          _controller.reverse(); // Rotate arrow icon back to 0 degrees
                        });
                      },
                    );
                }).toList(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Legal Documents', style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.blue[900],
                  fontWeight: FontWeight.bold,
                ),),
                Icon(Icons.keyboard_arrow_right, color: Colors.blue[900], size: 35.0,)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Case Management', style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.blue[900],
                  fontWeight: FontWeight.bold,
                ),),
                Icon(Icons.keyboard_arrow_right, color: Colors.blue[900], size: 35.0,)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Other', style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.blue[900],
                  fontWeight: FontWeight.bold,
                ),),
                Icon(Icons.keyboard_arrow_right, color: Colors.blue[900], size: 35.0,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
