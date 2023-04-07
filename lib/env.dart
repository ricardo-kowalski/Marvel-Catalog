import 'package:envied/envied.dart';
import 'hash_generator.dart';
part 'env.g.dart';

@Envied(path: '.env')
class Env {
  Env._();

  factory Env() {
    return Env._();
  }

  @EnviedField(varName: 'PUBLIC_KEY')
  static const publicKey = _Env.publicKey;

  @EnviedField(varName: 'PRIVATE_KEY')
  static const _privateKey = _Env.privateKey;

  static get hash => HashGenerator().get(
        publicKey: publicKey,
        privateKey: _privateKey,
        // convertedTimestamp: DateTime.now().millisecondsSinceEpoch.toString(),
        convertedTimestamp: '1',
      );
}
