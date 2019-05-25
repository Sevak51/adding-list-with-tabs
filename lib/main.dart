import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  build(context) {
    return MaterialApp (
     home: Scaffold (
       appBar: AppBar (
         title: Text('First app'),
         backgroundColor: Colors.green,
       ),
       body: Column (
         children: <Widget> [
           RaisedButton (
             child: Text('press', style: TextStyle(color: Colors.white), ),
             color: Colors.red,
             onPressed: (){},
           ),
           Card (
             child: Column (
               children: <Widget>[
                 Image.asset('assets/food.jpg'),
                 Text('Description'),
               ],
             )
           ),
         ]
       ),
     ),
    );
  }
}
