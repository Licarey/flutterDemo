import 'package:flutter/material.dart';

class GridItem {
  Card getStructuredGridCell(name, image) {
    return new Card(
        elevation: 1.5,
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
            new Image(image: new AssetImage(image)),
            new Center(
              child: new Text(name),
            )
          ],
        ));
  }

  GridView build() {
    return new GridView.count(
      primary: true,
      padding: const EdgeInsets.all(1.0),
      crossAxisCount: 2,//列数
      childAspectRatio: 0.85,//child填充比例
      mainAxisSpacing: 10.0,//纵向间距
      crossAxisSpacing: 1.0,//横向间距
      children: <Widget>[
        getStructuredGridCell("Facebook", "images/ic_launcher.png"),
        getStructuredGridCell("Facebook", "images/ic_launcher.png"),
        getStructuredGridCell("Facebook", "images/ic_launcher.png"),
        getStructuredGridCell("Facebook", "images/ic_launcher.png"),
        getStructuredGridCell("Facebook", "images/ic_launcher.png"),
        getStructuredGridCell("Facebook", "images/ic_launcher.png"),
        getStructuredGridCell("Facebook", "images/ic_launcher.png"),
      ],
    );
  }
}