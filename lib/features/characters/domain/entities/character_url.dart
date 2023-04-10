<<<<<<< HEAD
import 'package:equatable/equatable.dart';

class CharacterUrl extends Equatable {
  final String? type;
  final String? url;

  const CharacterUrl({this.type, this.url});

  @override
  List<Object?> get props => [type, url];
=======
class CharacterUrl {
  final String? type;
  final String? url;

  CharacterUrl({this.type, this.url});
>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)
}
