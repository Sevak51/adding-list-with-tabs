import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  final String title;
  final String image;
  final String price;

  Product(this.title, this.image, this.price);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EasyList'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset(image),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Text(title), Text(price)],
            ),
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
