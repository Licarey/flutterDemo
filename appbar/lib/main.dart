import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'appbar Demo',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: new AppBarWidget(),
    );
  }
}

class AppBarWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new AppBarState();
}

class AppBarState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      debugShowCheckedModeBanner: false, // 在调试期间，右上角的DEBUG字样
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(
            'AppBar',
            style: new TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ), 
          // centerTitle: true, // 当设置了actions之后，title的位置会发生变化，使用该属性，可以让标题忽略actions占去的空间居中
          // titleSpacing: 0.0,
          elevation: 0.0, // 下部的影子，该值越大，影子越清楚，为0时，不会有影子，和RaisedButton是一样的
          backgroundColor: Colors.cyan, // 背景色
          leading: this.appBarLeading(),
          actions: this.appBarActions(),
          bottom: null,//一个 AppBarBottomWidget 对象，通常是 TabBar。用来在 Toolbar 标题下面显示一个 Tab 导航栏
        ),
      ),
    );
  }

  appBarActions() {
    return <Widget>[
      new Container(
        width: 50.0,
        child: new Icon(
          Icons.star_border,
          color: Colors.red,
        ),
      ),
      new Container(
        width: 50.0,
        child: new Icon(Icons.share),
      ),
      new Container(
        color: Colors.orange,
        width: 50.0,
        margin: const EdgeInsets.only(
          left: 5.0,
          right: 5.0,
        ),
        alignment: Alignment.center,
        child: new Text('actions'),
      ),
    ];
  }

  appBarLeading() {
    return new RaisedButton(
      onPressed: this.clickedLeadingBtn,
      child: new Text("leadings" , style: new TextStyle(fontSize: 12.0),),
      textColor: Colors.white,
      color: Colors.red,
      elevation: 0.0,
      disabledElevation: 0.0,
      highlightElevation: 0.0,
      highlightColor: Colors.cyan,
      colorBrightness: Brightness.light,
      splashColor: Colors.red,
      padding: const EdgeInsets.all(5.0),
    );
  }

  //点击事件
  clickedLeadingBtn() {
    print('Clicked Leading');
  }
}

