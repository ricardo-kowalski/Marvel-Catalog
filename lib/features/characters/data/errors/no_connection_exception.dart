import 'package:marvel_catalog/core/core.dart';

class NoConnectionException extends AppException {
  const NoConnectionException()
      : super(
          code: 'NO_CONNECTION',
          message: 'Sem conexão com a internet!',
        );

  @override
  List<Object?> get props => [];
}
