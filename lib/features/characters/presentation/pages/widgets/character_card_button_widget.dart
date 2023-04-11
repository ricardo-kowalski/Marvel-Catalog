import 'package:flutter/material.dart';
import 'package:marvel_catalog/features/characters/characters.dart';

class CharacterCardButton extends StatelessWidget {
  final Character character;
  final VoidCallback? onPressed;

  const CharacterCardButton({
    Key? key,
    this.onPressed,
    required this.character,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      color: Colors.red,
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.only(
        left: 12.0,
        top: 8,
        bottom: 8,
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: Hero(
              tag: '${character.id}_image_tag',
              child: Material(
                type: MaterialType.transparency,
                child: Image.network(
                  character.thumbnail!.full,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Container(
                    color: Colors.red,
                  ),
                  loadingBuilder: (context, image, loadingProgress) {
                    if (loadingProgress == null) return image;
                    return Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes!
                            : null,
                        color: Colors.white,
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          MaterialButton(
            padding: EdgeInsets.zero,
            onPressed: onPressed,
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    height: 40,
                    decoration: const BoxDecoration(color: Colors.black45),
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            character.name ?? 'Unknown',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
