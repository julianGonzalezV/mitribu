import 'package:flutter/material.dart';
import 'package:mitribu/src/bloc/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: <Widget>[
            Text('Email ${bloc.emailValue}'),
            Text('Password ${bloc.passwordValue} '),
          ],
        ),
      ),
    );
  }
}
