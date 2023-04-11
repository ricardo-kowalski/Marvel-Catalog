import 'package:marvel_catalog/core/core.dart';

class CharacterNotFoundException extends AppException {
  const CharacterNotFoundException()
      : super(
          code: 'NOT_FOUND_EXCEPTION',
          message: 'Personagem não encontrado!',
        );

  @override
  List<Object?> get props => [];
}
