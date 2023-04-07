import 'package:envied/envied.dart';
import 'hash_generator.dart';
part 'api_key.g.dart';

@Envied(path: '.env')
class ApiKey {
  ApiKey._();

  factory ApiKey() {
    return ApiKey._();
  }

  static final _hashGenerator = HashGenerator();

  @EnviedField(varName: 'PUBLIC_KEY')
  static const publicKey = _ApiKey.publicKey;

  @EnviedField(varName: 'PRIVATE_KEY')
  static const _privateKey = _ApiKey._privateKey;

  static get hash => _hashGenerator.get(
        publicKey: publicKey,
        privateKey: _privateKey,
        // convertedTimestamp: DateTime.now().millisecondsSinceEpoch.toString(),
        convertedTimestamp: '1',
      );
}
