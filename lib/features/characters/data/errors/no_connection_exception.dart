import 'package:flutter/services.dart';

class NoConnectionException extends PlatformException {
  NoConnectionException()
      : super(
          code: 'NO_CONNECTION',
          message: 'Sem conexão com a internet!',
        );
}
