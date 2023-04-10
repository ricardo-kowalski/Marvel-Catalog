<<<<<<< HEAD
import 'package:equatable/equatable.dart';

class CharacterImage extends Equatable {
  final String? path;
  final String? extension;

  const CharacterImage({this.path, this.extension});

  String get full => '$path.$extension';

  @override
  List<Object?> get props => [path, extension];
=======
class CharacterImage {
  final String? path;
  final String? extension;

  CharacterImage({this.path, this.extension});

  String get full => '$path.$extension';
>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)
}
