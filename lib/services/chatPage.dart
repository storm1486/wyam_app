import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    Text("My Friends",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold, color: Colors.blue[900]),),
                    Text('View All', style: TextStyle(fontSize: 15, color: Colors.blue[900]),)
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}