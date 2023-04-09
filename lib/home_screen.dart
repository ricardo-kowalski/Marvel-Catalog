import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'features/characters/presentation/characters/widgets/characters_list.dart';

class HomeScreen extends StatelessWidget {
  final String title;
  const HomeScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 0,
      ),
      // body: ListView(
      //   shrinkWrap: false,
      //   children: [
      //     horizontalList1,
      //     const CharactersList(),
      //   ],
      // ),
      // body: CustomScrollView(
      //   slivers: [
      //     SliverToBoxAdapter(child: horizontalList1),
      //     SliverToBoxAdapter(child: CharactersList()),
      //   ],
      // ),
      body: CharactersList(),
    );
  }
}
