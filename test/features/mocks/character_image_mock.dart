import 'package:marvel_catalog/features/characters/data/models/image_model.dart';
import 'package:marvel_catalog/features/characters/domain/entities/character_image.dart';

CharacterImage tCharacterImage = const CharacterImage(
  path: 'http://i.annihil.us/u/prod/marvel/i/mg/2/b0/4c004065a3a78',
  extension: 'jpg',
);

List<CharacterImage> tCharacterImageList = [
  const CharacterImage(
    path: 'http://i.annihil.us/u/prod/marvel/i/mg/2/b0/4c004065a3a78',
    extension: 'jpg',
  ),
  const CharacterImage(
    path: 'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available',
    extension: 'jpg',
  ),
  const CharacterImage(
    path: null,
    extension: 'jpg',
  ),
  const CharacterImage(
    path: 'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available',
    extension: null,
  ),
];
// MODELS
CharacterImageModel tCharacterImageModel = const CharacterImageModel(
  path: 'http://i.annihil.us/u/prod/marvel/i/mg/2/b0/4c004065a3a78',
  extension: 'jpg',
);

List<CharacterImageModel> tCharacterImageModelList = [
  const CharacterImageModel(
    path: 'http://i.annihil.us/u/prod/marvel/i/mg/2/b0/4c004065a3a78',
    extension: 'jpg',
  ),
  const CharacterImageModel(
    path: 'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available',
    extension: 'jpg',
  ),
  const CharacterImageModel(
    path: null,
    extension: 'jpg',
  ),
  const CharacterImageModel(
    path: 'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available',
    extension: null,
  ),
];
