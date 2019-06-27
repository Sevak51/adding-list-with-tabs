import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  final String title;
  final String image;

  Product(this.title, this.image);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EasyList'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('assets/food.jpg'),
            Text('Sweets'),
            RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go back!'),
            ),
          ],
        ),
      ),
    );
  }
}
