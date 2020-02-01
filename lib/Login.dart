import 'package:authentication/SignUp.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'User.dart';
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  
 final FirebaseAuth _auth = FirebaseAuth.instance;
    TextEditingController email=TextEditingController();
    TextEditingController password=TextEditingController();

  login() async {
    final FirebaseUser user = (await _auth.signInWithEmailAndPassword(
      email: email.text,
      password: password.text,
    ))
        .user;
        print(user);
                 {Navigator.push(context, 
                    MaterialPageRoute(builder: (context) =>User(user) )
                  );
                }
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
       appBar: AppBar(
         title: Text("Authentication"),
       ),      
       body: Center(
         child: Container(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               Container(
                 child: TextField(
                   controller: email,
                   decoration: InputDecoration(
                     hintText: "Email",
                   ),
                 ),
                 
               ),
               Container(
                 child: TextField(
                   controller: password,
                   decoration: InputDecoration(
                     hintText: "Password",
                   ),
                 ),
                 
               ),
               Padding(
                 padding: const EdgeInsets.all(15.0),
                 child: RaisedButton(
                   
                   
                   child: Text("login"),
                   onPressed: ()=>login(),
                   color: Colors.blue,
                   
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(15.0),
                 child: RaisedButton(
                   
                   child: Text("SignUp"),
                   onPressed: ()=>SignUp(),
                   color: Colors.blue,
                   
                 ),
               ),
               Text("Forgot Password")
             ],
          
            
           ),
           
         ),
       ),
    );
  }
}