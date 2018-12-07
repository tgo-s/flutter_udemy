import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart'; //needs to be imported to enable debugPaintBaseLinesEnable

import './product_manager.dart';

void main() {
  //debugPaintBaselinesEnabled = true; //helps with debug interface elements
  //debugPaintBaselinesEnabled = true; //Indicate Baselines of the Texts
  //debugPaintPointersEnabled = true; // Highlight tap
  runApp(RootApp());
}

class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: true, // shows a grid in the screen
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        accentColor: Colors.deepOrange,
        brightness: Brightness.light,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text("Udemy App"),
          ),
          body: ProductManager()),
    );
  }
}
