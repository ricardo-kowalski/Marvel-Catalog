import 'package:flutter/services.dart';

class UnknownException extends PlatformException {
  UnknownException(String? message)
      : super(
          code: 'UNKNOWN',
          message: message,
        );
}
