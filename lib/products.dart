import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;
  // Optional arguments for positional arguments use square brackets
  // You have to assign a value and make it const
  Products([this.products = const []]);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: products
          .map((element) => Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/img/food.jpg'),
                    Text(element)
                  ],
                ),
              ))
          .toList(),
    );
  }
}