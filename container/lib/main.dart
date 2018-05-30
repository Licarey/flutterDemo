import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'container Demo',
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

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //container 一个拥有绘制、定位、调整大小的 widget。
//    return new Center(
//      child: new Container(
//        margin: const EdgeInsets.all(10.0),
//        color: const Color(0xFF00FF00),
//        width: 48.0,
//        height: 48.0,
//      ),
//    );

//    return new Container(
//      constraints: new BoxConstraints.expand(
//        height: Theme.of(context).textTheme.display1.fontSize * 1.1 + 200.0,
//      ),
//      padding: const EdgeInsets.all(8.0),
//      color: Colors.teal.shade700,
//      alignment: Alignment.center,
//      child: new Text('Hello World',
//          style: Theme
//              .of(context)
//              .textTheme
//              .display1
//              .copyWith(color: Colors.white)),
//      foregroundDecoration: new BoxDecoration(
//        image: new DecorationImage(
//          image: new NetworkImage('https://www.example.com/images/frame.png'),
//          centerSlice: new Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
//        ),
//      ),
//      transform: new Matrix4.rotationZ(0.1),//旋转图片
//    );

    //row 在水平方向上排列子widget的列表。

//    return new Row(
//      children: <Widget>[
//        new Expanded(
//          child: new Text('文本1', textAlign: TextAlign.center),
//        ),
//        new Expanded(
//          child: new Text('文本2', textAlign: TextAlign.center),
//          flex: 2,//相当于android weight权重
//        ),
//        new Expanded(
//          child: new FittedBox(
//            fit: BoxFit.contain, // otherwise the logo will be tiny
//            child: const FlutterLogo(),
//          ),
//        ),
//      ],
//    );

//      return new Column(
//        mainAxisAlignment: MainAxisAlignment.center,
//        crossAxisAlignment: CrossAxisAlignment.end,//主对齐方式 对于column 代表横向
//        children: <Widget>[
//          new Text('文本1'),
//          new Text('文本2'),
//          new Expanded(
//            flex: 1,
//            child: new FittedBox(
//              fit: BoxFit.contain, // otherwise the logo will be tiny
//              child: const FlutterLogo(),
//            ),
//          ),
//        ],
//      );

//        return new Column(
//          crossAxisAlignment: CrossAxisAlignment.center,
//          mainAxisSize: MainAxisSize.min,
//          children: <Widget>[
//            new Text('文本1'),
//            new Text('文本2'),
//            new Text('文本'),
//            new Text('文本!', style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0)),
//          ],
//        );

    //相当于android帧布局
//    return new Center(
//      child: new Stack(
//        //第一个子控件最下面
//        alignment: new Alignment(0.6, 0.6),
//        children: <Widget>[
//          new Align(
//            alignment: FractionalOffset.center,
////          heightFactor: 40.0,
////          widthFactor: 40.0,
//            child: new Image.network(
//              //加载网络图片
//              'http://h.hiphotos.baidu.com/image/pic/item/21a4462309f790525fe7185100f3d7ca7acbd5e1.jpg',
//              height: 300.0,
//              width: 300.0,
//              repeat: ImageRepeat.repeat, //图片重复方式
//            ),
//          ),
//          new Opacity(
//            opacity: 0.5, //透明度
//            child: new Container(
//              width: 300.0,
//              height: 400.0,
//              color: Colors.blue,
//            ),
//          ),
//          new Opacity(
//            opacity: 0.3,
//            child: new Container(
//              width: 200.0,
//              height: 200.0,
//              color: Colors.red,
//            ),
//          ),
//        ],
//      ),
//    );
  //流标签样式
    return new Scaffold(
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Wrap(
            spacing: 8.0, // 横向间距
            runSpacing: 4.0, // 纵向间距
            children: <Widget>[
              new Chip(
                avatar: new CircleAvatar(
                    backgroundColor: Colors.blue.shade900,
                    child: new Text('a')),
                label: new Text('标签1'),
              ),
              new Chip(
                avatar: new CircleAvatar(
                    backgroundColor: Colors.blue.shade900,
                    child: new Text('b')),
                label: new Text('标签2'),
              ),
              new Chip(
                avatar: new CircleAvatar(
                    backgroundColor: Colors.blue.shade900,
                    child: new Text('c')),
                label: new Text('标签3'),
              ),
              new Chip(
                avatar: new CircleAvatar(
                    backgroundColor: Colors.blue.shade900,
                    child: new Text('d')),
                label: new Text('标签4'),
              ),
              new Center()
            ],
          )
        ],
      ),
    );
  }
}
