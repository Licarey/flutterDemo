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
//class MyHomePage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text('从文件获取图像'),
//      ),
//      body: new Image.asset(
//        'images/1.png',
//        width: 200.0,
//        height: 100.0,
//        fit: BoxFit.fill,//填充方式
//      ),
//      
//    );
//  }
//}

//icon用法
//class MyHomePage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text('Icon用法'),
//      ),
//      //body: new Icon(Icons.movie , size: 100.0, color: Colors.red,),//属性
//      body: new IconButton(icon: new Icon(Icons.star) , onPressed: null,),
//    );
//  }
//}

//RaisedButton 简单用法
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new RaisedButton(
          onPressed: this.clickedRaisedButton,
          color: Colors.green,
          textColor: Colors.white,
          child: new Text(
          'Raised Button',),
          disabledColor: Colors.deepOrange, // 失效时的背景色
          disabledTextColor: Colors.grey, // 按钮失效时的文字颜色，同样的不能使用文本自己的样式或者颜色时才会 起作用
          splashColor: Colors.purple, // 点击按钮时的渐变背景色，当你不设置高亮背景时才会看的更清楚
          colorBrightness: Brightness.dark,
          elevation: 15.0, // 正常情况下浮动的距离
          highlightElevation: 5.0, // 高亮时的浮动距离
          disabledElevation: 50.0,
          padding: const EdgeInsets.all(20.0),
          shape: new Border.all(
            // 设置边框样式
            color: Colors.blue,
            width: 4.0,
            style: BorderStyle.solid,
          ),
          onHighlightChanged: this.hightLightChanged, // 可以用来监听按钮的按下和放开过程
          textTheme: ButtonTextTheme.accent,  //
      )
    );
  }

  void hightLightChanged(bool value) {

  }

  //重定向icon初始化
  Widget raiseButtonWithIcon(){
    return new Center(
      child: new RaisedButton.icon(
        onPressed: this.clickedRaisedButton,
        icon: new Icon(Icons.star),
        label: new Text('RaisedButton'),
      ),
    );
  }

  //按钮点击事件
  void clickedRaisedButton() {
    print("点击了按钮");
  }
}

//placeHolder通俗讲，就是一个用来占位的Widget，提示开发人员，这里需要暂时保留
Widget getPlaceHolder(){
  return new Container(
    width: 100.0,
    margin: const EdgeInsets.only(top: 30.0),
    child: new Placeholder(
      fallbackWidth: 100.0,
      fallbackHeight: 100.0,
      color: Colors.orange,
    ),
  );
}

//flutterLogo 一个flutter logo的控件
Widget getFlutterLogo(){
  return new FlutterLogo(
    size: 50.0,
    colors: Colors.red, // 图的颜色
    textColor: Colors.orange, // 只对带文字的style起作用
    // style: FlutterLogoStyle.markOnly,  // 只有图
    style: FlutterLogoStyle.stacked,
    // style: FlutterLogoStyle.stacked,  // 上图下文
    duration: new Duration(
      // 当colors、textColor或者style变化的时候起作用
      seconds: 3,
    ),
    curve: Curves.elasticOut,  // 动画方式
  );
}
