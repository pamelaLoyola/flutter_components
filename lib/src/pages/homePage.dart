import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> components = [
    'scaffold',
    'column',
    'row',
    'container',
    'image',
    'slider',
    'text field',
    'users'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
          // centerTitle: true,
          leading: Icon(Icons.arrow_back),
          actions: [
            CircleAvatar(
              backgroundColor: Colors.indigoAccent[100],
              child: Text('PL'),
            )
          ],
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: ListView(
            children: listaComponentes(),
          ),
        ));
  }

  List<Widget> listaComponentes() {
    List<Widget> lista = [];

    components.forEach((c) {
      lista
        ..add(GestureDetector(
          child: Card(
            color: Colors.cyan[300],
            elevation: 5.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            // margin: EdgeInsets.symmetric(vertical: 10.0),
            child: ListTile(
              leading: Icon(
                Icons.art_track,
                color: Colors.white,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
              title: Text(
                c,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          onTap: () => {Navigator.pushNamed(context, '$c')},
        ))
        ..add(Divider());
    });

    return lista;
  }
}
