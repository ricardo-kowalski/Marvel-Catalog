<<<<<<< HEAD
import 'package:marvel_catalog/core/app_exception.dart';

class ServerException extends AppException {
  const ServerException(String? message)
=======
import 'package:flutter/services.dart';

class ServerException extends PlatformException {
  ServerException(String? message)
>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)
      : super(
          code: 'SERVER_EXCEPTION',
          message: message,
        );
<<<<<<< HEAD

  @override
  List<Object?> get props => [];
=======
>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)
}
