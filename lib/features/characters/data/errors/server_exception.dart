import 'package:marvel_catalog/core/app_exception.dart';

class ServerException extends AppException {
  const ServerException(String? message)
      : super(
          code: 'SERVER_EXCEPTION',
          message: message,
        );

  @override
  List<Object?> get props => [];
}
