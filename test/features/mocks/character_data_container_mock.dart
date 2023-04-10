import 'package:marvel_catalog/features/characters/data/models/character_data_container_model.dart';
import 'package:marvel_catalog/features/characters/domain/entities/character_data_container.dart';

import 'character_mock.dart';

CharacterDataContainer tCharacterDataContainer = CharacterDataContainer(
  offset: 0,
  limit: 10,
  total: 1562,
  count: 10,
  results: tCharacterList,
);

// MODEL

CharacterDataContainerModel tCharacterDataContainerModel =
    CharacterDataContainerModel(
  offset: 0,
  limit: 10,
  total: 1562,
  count: 10,
  results: tCharacterModelList,
);
