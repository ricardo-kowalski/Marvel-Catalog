<<<<<<< HEAD
import 'package:marvel_catalog/core/app_exception.dart';

class NoConnectionException extends AppException {
  const NoConnectionException()
=======
import 'package:flutter/services.dart';

class NoConnectionException extends PlatformException {
  NoConnectionException()
>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)
      : super(
          code: 'NO_CONNECTION',
          message: 'Sem conexão com a internet!',
        );
<<<<<<< HEAD

  @override
  List<Object?> get props => [];
=======
>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)
}
