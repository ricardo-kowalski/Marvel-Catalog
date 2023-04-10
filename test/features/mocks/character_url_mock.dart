import 'package:marvel_catalog/features/characters/data/models/url_model.dart';
import 'package:marvel_catalog/features/characters/domain/entities/character_url.dart';

CharacterUrl tCharacterUrl = const CharacterUrl(
  type: 'detail',
  url:
      'http://marvel.com/characters/254/beetle?utm_campaign=apiRef&utm_source=8b9f3e8c3af3b15deb1eb9e6f95ae8d3',
);

List<CharacterUrl> tCharacterUrlList = [
  const CharacterUrl(
    type: 'comiclink',
    url:
        'http://marvel.com/comics/characters/1009179/beetle_abner_jenkins?utm_campaign=apiRef&utm_source=8b9f3e8c3af3b15deb1eb9e6f95ae8d3',
  ),
  const CharacterUrl(
    type: 'detail',
    url:
        'http://marvel.com/characters/254/beetle?utm_campaign=apiRef&utm_source=8b9f3e8c3af3b15deb1eb9e6f95ae8d3',
  ),
  const CharacterUrl(
    type: 'wiki',
    url: null,
  ),
  const CharacterUrl(
    type: null,
    url:
        'http://marvel.com/characters/254/beetle?utm_campaign=apiRef&utm_source=8b9f3e8c3af3b15deb1eb9e6f95ae8d3',
  )
];

// MODELS
CharacterUrlModel tCharacterUrlModel = const CharacterUrlModel(
  type: 'detail',
  url:
      'http://marvel.com/characters/254/beetle?utm_campaign=apiRef&utm_source=8b9f3e8c3af3b15deb1eb9e6f95ae8d3',
);

List<CharacterUrlModel> tCharacterUrlModelList = [
  const CharacterUrlModel(
    type: 'comiclink',
    url:
        'http://marvel.com/comics/characters/1009179/beetle_abner_jenkins?utm_campaign=apiRef&utm_source=8b9f3e8c3af3b15deb1eb9e6f95ae8d3',
  ),
  const CharacterUrlModel(
    type: 'detail',
    url:
        'http://marvel.com/characters/254/beetle?utm_campaign=apiRef&utm_source=8b9f3e8c3af3b15deb1eb9e6f95ae8d3',
  ),
  const CharacterUrlModel(
    type: 'wiki',
    url: null,
  ),
  const CharacterUrlModel(
    type: null,
    url:
        'http://marvel.com/characters/254/beetle?utm_campaign=apiRef&utm_source=8b9f3e8c3af3b15deb1eb9e6f95ae8d3',
  )
];
