import 'package:flutter/material.dart';

void main() =>
    runApp(new MaterialApp(title: 'Flutter Demo', home: new MyApp()));

class MyApp extends StatefulWidget {
  @override
  _MyApp createState() => new _MyApp();
}

class _MyApp extends State<MyApp> {
  String _lastName;
  String _firstName;
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  final TextEditingController controller = new TextEditingController();
  final TextEditingController controller2 = new TextEditingController();

  void _showMessage(String name) {
    showDialog<Null>(
        context: context,
        child: new AlertDialog(content: new Text(name), actions: <Widget>[
          new FlatButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: new Text('确定'))
        ]));
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text('表单输入')),
        // Form：用于将多个表单控件组合在一起的容器
        body: new Form(
            key: _formKey,
            child: new Column(
                children: <Widget>[
              // TextFieldd：包含输入的表单控件，每个表单字段都应该在FormField控件中
                new TextField(
                  decoration: new InputDecoration(hintText: "姓"),
                  // onSubmitted：当通过Form.save()保存表单时调用的方法
                  onChanged: (String value) {
                    _lastName = value;
                  } ,
                  controller: controller),
                new TextField(
                  decoration: new InputDecoration(hintText: "名"),
                  onChanged: (String value) {
                    _firstName = value;
                  },
                  controller: controller2),
              new Row(children: <Widget>[
                new RaisedButton(
                    child: new Text('重置'),
                    onPressed: () {
                      // reset()：将此Form下的每个TextField重置为初始状态
                      _firstName = "";
                      _lastName = "";
                      controller.text = "";
                      controller2.text = "";
                      _formKey.currentState.reset();
                      _showMessage('姓名信息已经重置');
                    }),
                new RaisedButton(
                    child: new Text('提交'),
                    onPressed: () {
                      // save()：保存Form下的每个TextField
                      _formKey.currentState.save();
                      _showMessage('你的姓名是' + _lastName + _firstName);
                    })
              ])
            ])
        )
    );
  }
}
