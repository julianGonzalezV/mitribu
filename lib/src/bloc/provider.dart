import 'package:flutter/material.dart';
import 'package:mitribu/src/bloc/login_bloc.dart';
export 'package:mitribu/src/bloc/login_bloc.dart';

class Provider extends InheritedWidget {
  final loginBloc = new LoginBloc();

  Provider({Key key, Widget child}) : super(key: key, child: child);

  /// It says the when an update operation happens then it should notify to its children
  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static LoginBloc of(BuildContext context) {
    /// search the provider instance inside context
    return context.dependOnInheritedWidgetOfExactType<Provider>().loginBloc;
    //return ( context.inheritFromWidgetOfExactType(Provider) as Provider ).loginBloc;
  }
}
