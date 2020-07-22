import 'package:flutter/material.dart';
import 'package:mitribu/src/pages/home_page.dart';
import 'package:mitribu/src/pages/login_page.dart';

Map<String, WidgetBuilder> appRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'login': (BuildContext context) => LoginPage(),
  };
}
