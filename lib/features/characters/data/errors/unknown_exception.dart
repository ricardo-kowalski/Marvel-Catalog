<<<<<<< HEAD
import 'package:marvel_catalog/core/app_exception.dart';

class UnknownException extends AppException {
  const UnknownException(String? message)
=======
import 'package:flutter/services.dart';

class UnknownException extends PlatformException {
  UnknownException(String? message)
>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)
      : super(
          code: 'UNKNOWN',
          message: message,
        );
<<<<<<< HEAD

  @override
  List<Object?> get props => [];
=======
>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)
}
