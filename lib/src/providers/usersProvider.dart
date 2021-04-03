import 'dart:convert';

import 'package:http/http.dart' as http;

class UsersProvider {
  final String url = 'https://jsonplaceholder.typicode.com/users';

  Future<dynamic> getUsers() async {
    var response;

    try {
      response = await http.get(url);
      response = jsonDecode(response.body);
    } catch (e) {
      print('Error: ' + e);
    }

    return response;
  }
}
