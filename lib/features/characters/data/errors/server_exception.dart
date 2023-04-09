import 'package:flutter/services.dart';

class ServerException extends PlatformException {
  ServerException(String? message)
      : super(
          code: 'SERVER_EXCEPTION',
          message: message,
        );
}
