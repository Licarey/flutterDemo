import 'package:flutter/material.dart';
import 'package:navigation_drawer/screens/AccountScreen.dart';
import 'package:navigation_drawer/screens/HomeScreen.dart';
import 'package:navigation_drawer/screens/SettingScreen.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new HomeScreen(), // route for home is '/' implicitly
    routes: <String, WidgetBuilder>{
      // define the routes
      SettingsScreen.routeName: (BuildContext context) => new SettingsScreen(),
      AccountScreen.routeName: (BuildContext context) => new AccountScreen(),
    },
  ));
}
