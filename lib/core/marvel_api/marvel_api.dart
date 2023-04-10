import 'package:envied/envied.dart';
import 'package:marvel_catalog/core/utils/hash_generator.dart';
part 'marvel_api.g.dart';

@Envied(path: '.env')
class MarvelApi {
  MarvelApi._();

  factory MarvelApi() {
    return MarvelApi._();
  }

  static final _hashGenerator = HashGenerator();

  @EnviedField(varName: 'URI')
  static const uri = _MarvelApi.uri;

  @EnviedField(varName: 'PUBLIC_KEY')
  static const publicKey = _MarvelApi.publicKey;

  @EnviedField(varName: 'PRIVATE_KEY')
  static const _privateKey = _MarvelApi._privateKey;

<<<<<<< HEAD
  static const popularHeroesIds = [
    '1009726', //X - Men
    '1009718', '1017325', '1011006', // Wolverine
    '1009697', // Vision
    '1009535', // Red Skull
    '1009515', // Punisher:
    '1009351', '1017098', // Hulk
    '1009220', // Captain America
    '1010998', // The Initiative
    '1010669', // Titania
    '1016825', // Spider-Man
    '1009465', // Mystique
    '1010943', // Magneto
    '1010726', // modok
    '1011386', // karma
    '1010925', // ghost rider:
  ];

=======
>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)
  static get hash => _hashGenerator.get(
        publicKey: publicKey,
        privateKey: _privateKey,
        // convertedTimestamp: DateTime.now().millisecondsSinceEpoch.toString(),
        convertedTimestamp: '1',
      );

  static Uri uriRequest({
    int? limit,
    int? offset,
<<<<<<< HEAD
    String? characterId,
=======
>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)
  }) {
    final Map<String, dynamic> params = {
      'apikey': publicKey,
      'ts': '1', //timestamp
      'hash': hash,
    };

<<<<<<< HEAD
    String unencodedPath = 'v1/public/characters';

    if (characterId != null) unencodedPath += '/$characterId';

=======
>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)
    if (limit != null) params['limit'] = limit.toString();

    if (offset != null) params['offset'] = offset.toString();

<<<<<<< HEAD
    return Uri.https(uri, unencodedPath, params);
=======
    return Uri.https(uri, 'v1/public/characters', params);
>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)
  }
}
