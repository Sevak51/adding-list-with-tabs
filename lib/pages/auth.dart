
import 'package:flutter/material.dart';
import 'package:first_app/pages/home.dart';
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (BuildContext context) => HomePage()),
            );
          },
          child: Text('Login'),
        ),
      ),
    );
  }
}