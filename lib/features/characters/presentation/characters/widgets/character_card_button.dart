import 'package:flutter/material.dart';
import 'package:marvel_catalog/features/characters/presentation/characters/widgets/skeleton.dart';

class CharacterCardButton extends StatelessWidget {
  // final Widget image;
  final String imageUrl;
  final VoidCallback onPressed;
  final String title;
  final Object heroTag;
  final EdgeInsets? margin;
  final Widget? trailing;

  const CharacterCardButton({
    Key? key,
    // required this.image,
    required this.imageUrl,
    required this.onPressed,
    required this.title,
    this.margin = EdgeInsets.zero,
    this.trailing,
    this.heroTag = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red,
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          Positioned.fill(
            child: Hero(
              tag: heroTag,
              child: Image.network(
                imageUrl,
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
                  // return Skeleton.card(
                  //   baseColor: Colors.grey,
                  //   width: 150,
                  // );
                  // return Image.asset(
                  //   'assets/images/marvel.png',
                  //   fit: BoxFit.cover,
                  // );
                },
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
                            title,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(color: Colors.white),
                          ),
                        ),
                        if (trailing != null) trailing!,
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
