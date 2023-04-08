class CharacterImage {
  final String? path;
  final String? extension;

  CharacterImage({this.path, this.extension});

  String get full => '$path.$extension';
}
