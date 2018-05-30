import 'dart:io';

import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  /**
   * new Image，用于从ImageProvider获取图像。
      new Image.asset，用于使用key从AssetBundle获取图像。
      new Image.network，用于从URL地址获取图像。
      new Image.file，用于从File获取图像。
   */
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
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
      home: new MyHomePage(),
    );
  }
}
//网络图片
//class MyHomePage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text('从URL地址获取图像'),
//      ),
//      body: new Center(
//        child: new Image.network(
//          'http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg',
//          scale: 2.0,//缩放
//        ),
//      ),
//    );
//  }
//}

//本地图片
//class MyHomePage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text('从本地获取图像'),
//      ),
//      body: new Center(
//        child: new Container(
//          decoration: new BoxDecoration(
//            image: new DecorationImage(
//                image: new AssetImage('images/1.png')),
//          ),
//        ),
//      ),
//    );
//  }
//}

//文件图片
//class MyHomePage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text('从文件获取图像'),
//      ),
//      body: new Image.file(new File("/Users/finup/Desktop/timg.jpeg")),
//    );
//  }
//}

/**
 * BoxFit.fill	全图显示，显示可能拉伸，充满
    BoxFit.contain	全图显示，显示原比例，不需充满
    BoxFit.cover	显示可能拉伸，可能裁剪，充满
    BoxFit.fitWidth	显示可能拉伸，可能裁剪，宽度充满
    BoxFit.fitHeight	显示可能拉伸，可能裁剪，高度充满
    BoxFit.none
    BoxFit.scaleDown	效果和contain差不多,但是此属性不允许显示超过源图片大小，可小不可大
 */
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('从文件获取图像'),
      ),
      body: new Image.asset(
        'images/1.png',
        width: 200.0,
        height: 100.0,
        fit: BoxFit.fill,//填充方式
      ),
    );
  }
}

