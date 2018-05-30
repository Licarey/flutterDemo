import 'package:flutter/material.dart';
import 'package:gridlayout/GridItem.dart';

void main() => runApp(new MyApp());

/**
 * gridview
 */
class MyApp extends StatelessWidget {
  final GridItem myGridView = new GridItem();

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: new Text("GridView Example"),
        ),
        body: myGridView.build(),
      ),
    );
  }
}
