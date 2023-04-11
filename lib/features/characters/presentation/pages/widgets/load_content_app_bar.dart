import 'package:flutter/material.dart';

class LoadContentAppBar extends StatelessWidget {
  final String title;

  const LoadContentAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: const Color.fromRGBO(237, 29, 36, 1),
      expandedHeight: 300,
      elevation: 0,
      centerTitle: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: [
            Positioned.fill(
              child: Opacity(
                opacity: 0.5,
                child: Image.asset(
                  height: 200,
                  'assets/images/comics.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned.fill(
              child: Image.asset(
                height: 200,
                'assets/images/marvel-logo-transp.png',
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
