import 'package:flutter/material.dart';

class RowPage extends StatefulWidget {
  RowPage({Key key}) : super(key: key);

  @override
  _RowPageState createState() => _RowPageState();
}

class _RowPageState extends State<RowPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('row'),
      ),
      body: SafeArea(
        child: Container(
          height: height,
          padding: EdgeInsets.all(10.0),
          // color: Colors.indigo[100],
          child: Row(
            // mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MaterialButton(
                color: Colors.lightBlue,
                textColor: Colors.white,
                child: Icon(
                  Icons.camera_front,
                ),
                padding: EdgeInsets.all(16),
                shape: CircleBorder(),
                onPressed: () {},
              ),
              RaisedButton(
                color: Colors.lightGreen,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                child: Icon(
                  Icons.place,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.access_alarm),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
