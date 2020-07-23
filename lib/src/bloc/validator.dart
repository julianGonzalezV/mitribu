import 'dart:async';

import 'dart:math';

class Validator {
  final emailValidation = StreamTransformer<String, String>.fromHandlers(
    handleData: (data, sink) {
      Pattern pattern =
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
      RegExp regExp = new RegExp(pattern);

      if (regExp.hasMatch(data)) {
      } else {
        sink.addError('No es un correo válido');
      }
    },
  );

  final passwordValidation = StreamTransformer<String, String>.fromHandlers(
    handleData: (data, sink) {
      if (data.length >= 6) {
        sink.add(data);
      } else {
        sink.addError('La contraseña debe ser mayor a 6 caracteres');
      }
    },
  );
}
