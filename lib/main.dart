import 'package:flutter/material.dart';
import 'package:mitribu/src/bloc/provider.dart';
import 'package:mitribu/src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'login',
        routes: appRoutes(),
        theme: ThemeData(primaryColor: Colors.deepOrangeAccent),
      ),
    );
  }
}
