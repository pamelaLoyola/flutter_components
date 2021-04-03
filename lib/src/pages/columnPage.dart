import 'package:flutter/material.dart';

class ColumnPage extends StatefulWidget {
  ColumnPage({Key key}) : super(key: key);

  @override
  _ColumnPageState createState() => _ColumnPageState();
}

class _ColumnPageState extends State<ColumnPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Column'),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              Container(
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              Container(
                height: 90,
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              Container(
                height: 120,
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(10.0)),
              ),
            ],
          ),
        ));
  }
}
