import 'package:marvel_catalog/core/app_exception.dart';

class NoConnectionException extends AppException {
  const NoConnectionException()
      : super(
          code: 'NO_CONNECTION',
          message: 'Sem conexão com a internet!',
        );

  @override
  List<Object?> get props => [];
}
