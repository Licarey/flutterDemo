import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.green,//appbar背景色
        accentColor: Colors.red,//CheckBox，RadioButton，SwitchCompat等一般控件的选中效果默认采用该颜色
        backgroundColor: Colors.green
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("我是appBar"),
      ),
      body: new Container(
        decoration: new BoxDecoration(color: Colors.red),
        child: new Center(
          child: new Container(
            color: Theme.of(context).accentColor,
            child: new Text("我是text" , style: Theme.of(context).textTheme.title,),
          ),
        ),
      ),
      floatingActionButton: new Theme(
          data: Theme.of(context).copyWith(accentColor: Colors.grey),
          child: new FloatingActionButton(
          onPressed: null,
          child: new Icon(Icons.add))),
    );
  }
}

