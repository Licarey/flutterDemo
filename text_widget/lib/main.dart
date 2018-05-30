import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new Scaffold(
        appBar: new AppBar(
          title: new RichText(
            text: new TextSpan(
              text: 'Hello ',
              style: DefaultTextStyle.of(context).style,
              children: <TextSpan>[
                new TextSpan(text: 'bold', style: new TextStyle(fontWeight: FontWeight.bold)),
                new TextSpan(text: ' world!'),
              ],
            ),
          ),
        ),
        body: new Center(
          child: new Text(
            'Hello! How are you哈哈哈哈回复哈发货发货发货发货哈发货?',
            textAlign: TextAlign.center,//文字对齐方式
            textScaleFactor: 3.0,//文字缩放大小
            overflow: TextOverflow.ellipsis,
            style: new TextStyle(fontWeight: FontWeight.bold , color: Colors.red),//文字样式
          ),
        ),
      ),
    );
  }
}


