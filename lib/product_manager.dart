import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  // Brackets on constructor make it a named parameter
  ProductManager({this.startingProduct = 'Sweets Tester'});

  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
    void initState() {
      super.initState();
      _products.add(widget.startingProduct);
    }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: RaisedButton(
            color: Theme.of(context).primaryColor,
            child: Text("Add Product"),
            onPressed: () {
              setState(() {
                _products.add('Advanced Food Tester');
              });
            },
          ),
          margin: EdgeInsets.all(10.0),
        ),
        Products(_products)
      ],
    );
  }
}
