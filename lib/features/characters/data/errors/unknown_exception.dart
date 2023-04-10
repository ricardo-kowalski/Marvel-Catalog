import 'package:marvel_catalog/core/app_exception.dart';

class UnknownException extends AppException {
  const UnknownException(String? message)
      : super(
          code: 'UNKNOWN',
          message: message,
        );

  @override
  List<Object?> get props => [];
}
