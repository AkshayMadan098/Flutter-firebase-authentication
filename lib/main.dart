import 'package:authentication/SignUp.dart';
import 'package:flutter/material.dart';

import 'Login.dart';
main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      title: "Authentication",
      home: SignUp(),
    );
  }
}