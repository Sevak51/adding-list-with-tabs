import 'package:flutter/material.dart';
import 'package:first_app/pages/product.dart';

class Products extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  Products([this.products = const []]) {
    print('[Products Widget] Constructor');
  }

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['imageurl']),
          Text(products[index]['title']),
          Text(products[index]['price'].toString()),
          ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Product(products[index]['title'], products[index]['imageurl'], products[index]['price'].toString())),
                    );
                  },
                  child: Text("Details"),
                )
              ]
          )
        ],
      ),
    );
  }

  Widget _buildProductList() {
    Widget productsCard;
    if (products.length > 0) {
      productsCard = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    } else {
      productsCard = Center(child: Text('No products found'));
    }
    return productsCard;
  }

  @override
  Widget build(BuildContext context) {
    print('[Products Widget] build()');
    return _buildProductList();
  }
}