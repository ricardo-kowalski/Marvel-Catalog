import 'package:flutter/material.dart';
import 'package:marvel_catalog/features/characters/characters.dart';

class CharacterListItem extends StatelessWidget {
  final Character character;
  final Function(Character)? onCardPressed;

  const CharacterListItem({
    super.key,
    required this.character,
    this.onCardPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCardPressed != null ? () => onCardPressed!(character) : () {},
      child: SizedBox(
        height: 150.0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Card(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              elevation: 4,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10.0),
                ),
                child: character.thumbnail?.full != null
                    ? Hero(
                        tag: '${character.id}_image_tag',
                        child: Material(
                          type: MaterialType.transparency,
                          child: Image.network(
                            height: 150.0,
                            width: 100.0,
                            character.thumbnail!.full,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) =>
                                Image.asset(
                              'assets/images/marvel.png',
                              fit: BoxFit.cover,
                              height: 150.0,
                              width: 100.0,
                            ),
                            loadingBuilder: (context, image, loadingProgress) {
                              if (loadingProgress == null) return image;

                              return const Skeleton(
                                height: 150.0,
                                width: 100.0,
                                baseColor: Colors.grey,
                              );
                            },
                          ),
                        ),
                      )
                    : Container(
                        color: Colors.red,
                        height: 300,
                      ),
              ),
            ),
            const SizedBox(width: 10.0),
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    character.name ?? 'Unknown',
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).textTheme.titleLarge!.color,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    character.description ?? 'No description available.',
                    style: Theme.of(context).textTheme.bodyLarge,
                    maxLines: 4,
                  ),
                  const SizedBox(height: 10.0),
                  // Text(
                  //   character.resourceUri ?? 'resource uri',
                  //   style: TextStyle(
                  //     fontSize: 13.0,
                  //     color: Theme.of(context).textTheme.bodySmall?.color,
                  //   ),
                  //   maxLines: 2,
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
