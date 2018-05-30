import 'dart:math';
import 'package:flutter/material.dart';


//动画基础
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//      title: 'Flutter Demo',
//      home: new MyHomePage(),
//    );
//  }
//}

//class MyHomePage extends StatefulWidget {
//  @override
//  _MyHomePageState createState() => new _MyHomePageState();
//}
//
//class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
//  final random = new Random();
//  int dataSet = 50;
//  AnimationController animation;
//  Tween<double> tween;
//
//  @override
//  void initState() {
//    super.initState();
//    animation = new AnimationController(
//        duration: const Duration(milliseconds: 300),
//        vsync: this
//    );
//    // Tween({T begin, T end })：创建tween（补间）
//    tween = new Tween<double>(begin: 0.0, end: dataSet.toDouble());
//    animation.forward();
//  }
//
//  @override
//  void dispose() {
//    animation.dispose();
//    super.dispose();
//  }
//
//  void changeData() {
//    setState(() {
//      dataSet = random.nextInt(100);
//      tween = new Tween<double>(
//        /*
//        @override
//        T evaluate(
//          Animation<double> animation
//        )
//        返回给定动画的当前值的内插值
//        当动画值分别为0.0或1.0时，此方法返回begin和end
//         */
//          begin: tween.evaluate(animation),
//          end: dataSet.toDouble()
//      );
//      animation.forward(from: 0.0);
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      body: new Center(
//          child: new CustomPaint(
//              size: new Size(200.0, 100.0),
//              /*
//            Animation<T> animate(
//              Animation<double> parent
//            )
//            返回一个由给定动画驱动的新动画，但它承担由该对象确定的值
//             */
//              painter: new BarChartPainter(tween.animate(animation))
//          )
//      ),
//      floatingActionButton: new FloatingActionButton(
//        onPressed: changeData,
//        child: new Icon(Icons.refresh),
//      ),
//    );
//  }
//}
//
//class BarChartPainter extends CustomPainter {
//  static const barWidth = 10.0;
//
//  BarChartPainter(Animation<double> animation)
//      : animation = animation,
//        super(repaint: animation);
//
//  final Animation<double> animation;
//
//  @override
//  void paint(Canvas canvas, Size size) {
//    final barHeight = animation.value;
//    final paint = new Paint()
//      ..color = Colors.blue[400]
//      ..style = PaintingStyle.fill;
//    canvas.drawRect(
//        new Rect.fromLTWH(
//            size.width-barWidth/2.0,
//            size.height-barHeight,
//            barWidth,
//            barHeight
//        ),
//        paint
//    );
//  }
//
//  @override
//  bool shouldRepaint(BarChartPainter old) => false;
//}


/**---------------------------------------------------------------------------
 * 涂鸦 通过继承CustomPainter 自定义一个控件
 */
class SignaturePainter extends CustomPainter {
  SignaturePainter(this.points);

  final List<Offset> points; // Offset:一个不可变的2D浮点偏移。

  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint() //设置笔的属性
      ..color = Colors.blue[200]
      ..strokeCap = StrokeCap.round
      ..isAntiAlias = true
      ..strokeWidth = 12.0
      ..strokeJoin = StrokeJoin.bevel;

    for (int i = 0; i < points.length - 1; i++) {
      if (points[i] != null && points[i + 1] != null)
        canvas.drawLine(points[i], points[i + 1],
            paint);
      //drawLine(Offset p1, Offset p2, Paint paint) → void
//      canvas.drawOval(
//          new Rect.fromCircle(center: points[i], radius: 20.0), paint);
////      canvas.drawOval(rect, paint)
//    canvas.drawCircle(points[i], 20.0, paint);
    }
  }

  /**
   * 是否重绘
   */
  bool shouldRepaint(SignaturePainter other) => other.points != points;
//  bool shouldRepaint(SignaturePainter other) =>true;
}

class Signature extends StatefulWidget {
  SignatureState createState() => new SignatureState();
}

class SignatureState extends State<Signature> {
  List<Offset> _points = <Offset>[];

  Widget build(BuildContext context) {
    return new Stack(
      children: [
        GestureDetector(//手势探测器，一个特殊的widget，想要给一个widge添加手势，直接用这货包裹起来
          onPanUpdate: (DragUpdateDetails details) {//按下
            RenderBox referenceBox = context.findRenderObject();
            Offset localPosition =
            referenceBox.globalToLocal(details.globalPosition);
            setState(() {
              _points = new List.from(_points)..add(localPosition);
            });
          },
          onPanEnd: (DragEndDetails details) => _points.add(null),//抬起来
        ),
        CustomPaint(painter: new SignaturePainter(_points))
      ],
    );
  }
}

class DemoApp extends StatelessWidget {
  Widget build(BuildContext context) => new Scaffold(body: new Signature());
}

void main() => runApp(new MaterialApp(home: new DemoApp()));

