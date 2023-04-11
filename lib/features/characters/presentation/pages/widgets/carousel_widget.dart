import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:marvel_catalog/features/characters/domain/domain.dart';

import 'character_card_button_widget.dart';

class CarouselWidget extends StatefulWidget {
  final List<Character> characters;
  final Function(Character)? onCardPressed;
  const CarouselWidget({
    super.key,
    required this.characters,
    this.onCardPressed,
  });

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  List<Widget> imageSliders = [];

  @override
  void initState() {
    for (var character in widget.characters) {
      imageSliders.add(
        SizedBox(
          width: 150.0,
          child: CharacterCardButton(
            onPressed: widget.onCardPressed != null
                ? () => widget.onCardPressed!(character)
                : () {},
            character: character,
          ),
        ),
      );
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.0,
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          viewportFraction: 0.35,
        ),
        items: imageSliders,
      ),
    );
  }
}
