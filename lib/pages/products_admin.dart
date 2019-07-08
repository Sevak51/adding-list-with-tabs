import 'package:flutter/material.dart';
import 'package:first_app/products_list.dart';
import 'package:first_app/products_edit.dart';


class Authorization extends StatefulWidget {
  @override
  _AuthorizationState createState() => _AuthorizationState();
}

class _AuthorizationState extends State<Authorization> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Products admin"),
          bottom: TabBar(tabs: [
            Tab(icon: Icon(Icons.list),text: 'Products',),
            Tab(icon: Icon(Icons.edit),text:  'Edit',),
          ]),
        ),
        body: TabBarView(children: [

          ProductsList(),
          Edit(),

        ]),
      ),
      );
  }
}





