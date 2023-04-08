import 'package:envied/envied.dart';
import 'package:marvel_catalog/core/utils/hash_generator.dart';
part 'marvel_api.g.dart';

// final domain = 'https://gateway.marvel.com:443';

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

  static get hash => _hashGenerator.get(
        publicKey: publicKey,
        privateKey: _privateKey,
        // convertedTimestamp: DateTime.now().millisecondsSinceEpoch.toString(),
        convertedTimestamp: '1',
      );

  static Uri uriRequest({
    int? limit,
    int? offset,
  }) {
    final Map<String, dynamic> params = {
      'apikey': publicKey,
      // 'ts': '${MarvelApi.timestamp}',
      'ts': '1',
      'hash': hash,
    };

    if (limit != null) params['limit'] = limit.toString();

    if (offset != null) params['offset'] = offset.toString();

    return Uri.https(uri, 'v1/public/characters', params);
  }
  // Uri.parse(
  //   '$uri/characters?apikey=$publicKey&ts=1&hash=$hash',
  // );
}
