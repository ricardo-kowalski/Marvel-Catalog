import 'package:marvel_catalog/features/characters/data/models/character_model.dart';
import 'package:marvel_catalog/features/characters/domain/entities/character.dart';

import 'character_image_mock.dart';
import 'character_url_mock.dart';

Character tCharacter = Character(
  id: 1009179,
  name: 'Beetle (Abner Jenkins)',
  description: '',
  thumbnail: tCharacterImage,
  resourceUri: 'http://gateway.marvel.com/v1/public/characters/1009179',
  urls: tCharacterUrlList,
);

List<Character> tCharacterList = [
  Character(
    id: 1009179,
    name: 'Beetle (Abner Jenkins)',
    description: '',
    thumbnail: tCharacterImage,
    resourceUri: 'http://gateway.marvel.com/v1/public/characters/1009179',
    urls: tCharacterUrlList,
  ),
  Character(
    id: 1009245,
    name: 'Constrictor',
    description: '',
    thumbnail: null,
    resourceUri: 'http://gateway.marvel.com/v1/public/characters/1009245',
    urls: tCharacterUrlList,
  ),
  Character(
    id: null,
    name: 'Beetle (Abner Jenkins)',
    description: '',
    thumbnail: tCharacterImage,
    resourceUri: 'http://gateway.marvel.com/v1/public/characters/1009179',
    urls: tCharacterUrlList,
  ),
  Character(
    id: 1009388,
    name: 'King Bedlam',
    description: '',
    thumbnail: tCharacterImage,
    resourceUri: null,
    urls: null,
  ),
];
//MODELS

CharacterModel tCharacterModel = CharacterModel(
  id: 1009179,
  name: 'Beetle (Abner Jenkins)',
  description: '',
  thumbnail: tCharacterImageModel,
  resourceUri: 'http://gateway.marvel.com/v1/public/characters/1009179',
  urls: tCharacterUrlModelList,
);

List<CharacterModel> tCharacterModelList = [
  CharacterModel(
    id: 1009179,
    name: 'Beetle (Abner Jenkins)',
    description: '',
    thumbnail: tCharacterImageModel,
    resourceUri: 'http://gateway.marvel.com/v1/public/characters/1009179',
    urls: tCharacterUrlModelList,
  ),
  CharacterModel(
    id: 1009245,
    name: 'Constrictor',
    description: '',
    thumbnail: null,
    resourceUri: 'http://gateway.marvel.com/v1/public/characters/1009245',
    urls: tCharacterUrlModelList,
  ),
  CharacterModel(
    id: null,
    name: 'Beetle (Abner Jenkins)',
    description: '',
    thumbnail: tCharacterImageModel,
    resourceUri: 'http://gateway.marvel.com/v1/public/characters/1009179',
    urls: tCharacterUrlModelList,
  ),
  CharacterModel(
    id: 1009388,
    name: 'King Bedlam',
    description: '',
    thumbnail: tCharacterImageModel,
    resourceUri: null,
    urls: null,
  ),
];
