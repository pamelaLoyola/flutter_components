import 'package:flutter/material.dart';

class ImagePage extends StatefulWidget {
  ImagePage({Key key}) : super(key: key);

  @override
  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('card & image'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Card(
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading:
                          Icon(Icons.photo_album, color: Colors.indigo[300]),
                      title: Text('Este es un card'),
                      subtitle: Text('Descripción del card'),
                      trailing: Icon(Icons.access_alarm),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        FlatButton(
                          child: Text('Cancelar'),
                          onPressed: () {},
                        ),
                        FlatButton(
                          child: Text('Ok'),
                          onPressed: () {},
                        )
                      ],
                    )
                  ],
                ),
              ),
              Divider(),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                          offset: Offset(2.0, 10.0))
                    ]),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Column(
                    children: [
                      FadeInImage(
                        image: NetworkImage(
                            'https://static.photocdn.pt/images/articles/2017_1/iStock-545347988.jpg'),
                        placeholder: AssetImage('assets/gifs/loading.gif'),
                        fadeInDuration: Duration(milliseconds: 200),
                        height: 300.0,
                        fit: BoxFit.cover,
                      ),
                      Container(
                          padding: EdgeInsets.all(10.0),
                          child: Text('Caption de esta foto de atardecer'))
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
