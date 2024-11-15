import 'dart:convert';

import 'package:dart_json_example/generator/user.dart';

// import 'package:dart_json_example/user.dart';

void main() {
  String jsonString = '''
  {
    "name": "Dhias",
    "email": "diashabibi8@gmail.com",
    "age": 18

  }
''';

  Map<String, dynamic> user = jsonDecode(jsonString);
  final userObj = User.fromMap(user);
  print('name: ${user['name']}');
  print('Age: ${user['age']}');

  print('Name: ${userObj.name}');
  print('Email: ${userObj.email}');
  print('Age: ${userObj.age}');

  print(user);

  String userString = jsonEncode(user);
  print(userString);
}
