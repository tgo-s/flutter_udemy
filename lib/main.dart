import 'package:flutter/material.dart';

import './product_manager.dart';

void main() => runApp(RootApp());

class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        accentColor: Colors.deepOrange,
        brightness: Brightness.light,

      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text("Udemy App"),
          ),
          body: ProductManager()
          ),
    );
  }
}
