import 'package:flutter/material.dart';

class ContainerPage extends StatefulWidget {
  ContainerPage({Key key}) : super(key: key);

  @override
  _ContainerPageState createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
              // color: Colors.blue[200],
              borderRadius: BorderRadius.circular(10.0),
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                  colors: [Colors.blue, Colors.lightBlue[100]]),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10.0,
                  spreadRadius: 5.0,
                  offset: Offset(10, 20),
                )
              ],
              image: DecorationImage(
                  image: NetworkImage(
                      'https://i.picsum.photos/id/1011/5472/3648.jpg?hmac=Koo9845x2akkVzVFX3xxAc9BCkeGYA9VRVfLE4f0Zzk'),
                  fit: BoxFit.cover),
              border: Border.all(
                color: Colors.grey,
                width: 2.0,
              )),
        ),
      ),
    );
  }
}
