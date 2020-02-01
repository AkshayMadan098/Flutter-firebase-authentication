import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'Login.dart';
class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  
 final FirebaseAuth _auth = FirebaseAuth.instance;
      TextEditingController email=TextEditingController();
    TextEditingController password=TextEditingController();

  signup() async {
    final FirebaseUser user = (await _auth.createUserWithEmailAndPassword(
      email: email.text,
      password: password.text,
    ))
        .user;
        print(user);
                 {Navigator.push(context, 
                    MaterialPageRoute(builder: (context) =>Login() )
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
                   
                   
                   child: Text("SignUp"),
                   onPressed: ()=>signup(),
                   color: Colors.blue,
                   
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(15.0),
                 child: RaisedButton(
                   
                   child: Text("Login"),
                   onPressed: (){},
                   color: Colors.blue,
                   
                 ),
               ),
             ],
          
            
           ),
           
         ),
       ),
    );
  }
}