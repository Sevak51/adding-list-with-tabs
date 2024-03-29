
import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import 'package:first_app/pages/home.dart';
import './product_manager.dart';
import 'package:first_app/pages/auth.dart';

void main() {
  // debugPaintSizeEnabled = true;
  // debugPaintBaselinesEnabled = true;
  // debugPaintPointersEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowMaterialGrid: true,
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.deepOrange,
          accentColor: Colors.deepPurple),
      home: LoginPage(),
    );
  }
}