import 'package:flutter/services.dart';
import 'package:marvel_catalog/core/app_exception.dart';

class CharacterNotFoundException extends AppException {
  const CharacterNotFoundException()
      : super(
          code: 'NOT_FOUND_EXCEPTION',
          message: 'Personagem não encontrado!',
        );

  @override
  List<Object?> get props => [];
}
