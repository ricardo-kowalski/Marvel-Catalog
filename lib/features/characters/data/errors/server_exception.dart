import 'package:marvel_catalog/core/core.dart';

class ServerException extends AppException {
  const ServerException(String? message)
      : super(
          code: 'SERVER_EXCEPTION',
          message: message,
        );

  @override
  List<Object?> get props => [];
}
