import 'package:flutter/material.dart';
import 'package:marvel_catalog/features/characters/domain/entities/character.dart';

class CharacterListItem extends StatelessWidget {
  final Character character;
  const CharacterListItem({
    super.key,
    required this.character,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        height: 100.0,
        width: 100.0,
        child: character.thumbnail?.full != null
            ? Image.network(
                character.thumbnail!.full,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  color: Colors.red,
                  height: 300,
                ),
                loadingBuilder: (context, image, loadingProgress) {
                  if (loadingProgress == null) return image;
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes!
                          : null,
                      color: Colors.red,
                    ),
                  );
                  // return Image.asset(
                  //   'assets/images/marvel.png',
                  //   fit: BoxFit.cover,
                  // );
                },
              )
            : Container(
                color: Colors.red,
                height: 300,
              ),
      ),
      title: Text(character.name ?? '--'),
      subtitle: Text(character.description ?? '', maxLines: 2),
    );
  }
}
