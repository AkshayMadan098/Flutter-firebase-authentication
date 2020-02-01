import 'package:flutter/material.dart';
class User extends StatefulWidget {
  var user;
  User(this.user);
  @override
  _UserState createState() => _UserState(this.user);
}

class _UserState extends State<User> {
  var user;
  _UserState(this.user);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User"),
      ),
      body: Text(user.email),
    );
  }
}