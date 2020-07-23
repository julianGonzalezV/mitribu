import 'dart:async';

import 'package:mitribu/src/bloc/validator.dart';

class LoginBloc with Validator {
  /// Broadcast for allowing multiple instances to see the changes
  final _emailController = StreamController<String>.broadcast();
  final _passwordController = StreamController<String>.broadcast();

  /// Allow to listen the every stream
  Stream<String> get emailStream =>
      _emailController.stream.transform(emailValidation);

  Stream<String> get passwordStream =>
      _passwordController.stream.transform(passwordValidation);

// reference call
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  dispose() {
    _emailController?.close();
    _passwordController?.close();
  }
}
