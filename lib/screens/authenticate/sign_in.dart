import 'package:flutter/material.dart';
import 'package:ninjatest/services/auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text("Sign in to Brew Crew"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        child: ElevatedButton(
          child: Text("Sign in anonym"),
          onPressed: () async {
            dynamic result = await _auth.signInAnon();
            if (result == null) {
              print("Error signing in");
            } else {
              print("Sing in");
              print(result);
            }
          },
        ),
      ),
    );
  }
}
