import 'package:flutter/material.dart';
import 'package:ymmi_connect_unofficial/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "YMMI Connect",
      theme: ThemeData(
        primarySwatch: Colors.purple
      ),
      routes: routes,
    );
  }
}

