import 'package:flutter/material.dart';
import 'package:flutter_components/src/providers/usersProvider.dart';

class UsersPage extends StatefulWidget {
  UsersPage({Key key}) : super(key: key);

  @override
  _UsersPageState createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  UsersProvider user = new UsersProvider();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users'),
        centerTitle: true,
      ),
      body: Center(
        child: FutureBuilder(
            future: user.getUsers(),
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
              if (snapshot.hasData) {
                var data = snapshot.data;
                return ListView(children: userList(data));
              } else {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('cargando ...'),
                      SizedBox(height: 10.0),
                      CircularProgressIndicator()
                    ],
                  ),
                );
              }
            }),
      ),
    );
  }

  List<Widget> userList(users) {
    List<Widget> list = [];

    users.forEach((user) {
      list
        ..add(ListTile(
            leading: Icon(Icons.child_care),
            title: Text('Name: ${user['name']}'),
            subtitle: Text('Email: ${user['email']}'),
            trailing: FlatButton(
              child: Text(
                'more',
                style: TextStyle(color: Colors.blueGrey[200]),
              ),
              onPressed: () => {},
            )));
      list..add(Divider());
    });

    return list;
  }

  Future<dynamic> getUsers() async {
    var users = await user.getUsers();
    print(users);
  }
}
