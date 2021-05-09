import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'homepage_screen.dart';

final   routes = {
  '/login': (BuildContext context) => LoginUser(),
  '/home': (BuildContext context) => HomePage(),
  '/' : (BuildContext context) => LoginUser(),
};