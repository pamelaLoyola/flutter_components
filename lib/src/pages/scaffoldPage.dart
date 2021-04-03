import 'package:flutter/material.dart';

class ScaffoldPage extends StatefulWidget {
  ScaffoldPage({Key key}) : super(key: key);

  @override
  _ScaffoldPageState createState() => _ScaffoldPageState();
}

class _ScaffoldPageState extends State<ScaffoldPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scaffold'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () => {},
          ),
          Container(
            padding: EdgeInsets.all(2.0),
            child: CircleAvatar(
              backgroundImage:
                  NetworkImage('https://picsum.photos/500/300/?image=1005'),
              radius: 25.0,
            ),
          )
        ],
      ),
      body: SafeArea(child: Text('Scaffold')),
    );
  }
}
