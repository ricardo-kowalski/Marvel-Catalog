import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/domain.dart';
import '../../presentation.dart';
import '../widgets/carousel_widget.dart';
import '../widgets/load_content_app_bar.dart';
import 'character_detail_screen.dart';

class LoadedContentScreen extends StatefulWidget {
  const LoadedContentScreen({
    super.key,
    required this.characters,
    required this.recordCount,
  });

  final List<Character> characters;
  final int recordCount;

  @override
  State<LoadedContentScreen> createState() => _LoadedContentScreenState();
}

class _LoadedContentScreenState extends State<LoadedContentScreen> {
  late ScrollController scrollController;
  late AllCharactersCubit charsListCubit;

  Future<void> initController() async {
    scrollController.addListener(_scrollListener);
  }

  // verifica mudanças de scroll e chama
  // a função de load quando atingir o final da página
  _scrollListener() async {
    if (scrollController.offset >= scrollController.position.maxScrollExtent &&
        !scrollController.position.outOfRange) {
      await charsListCubit.load();
    }
  }

  @override
  void initState() {
    super.initState();
    charsListCubit = context.read<AllCharactersCubit>();
    scrollController = ScrollController();
    initController();
  }

  @override
  void dispose() {
    scrollController.removeListener(_scrollListener);
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        shrinkWrap: true,
        controller: scrollController,
        slivers: [
          // sliver appbar
          const LoadContentAppBar(title: 'Marvel App'),
          // carroussel
          charsListCubit.isLoadingHeroes
              ? SliverToBoxAdapter(child: horizontalSkeleton)
              : SliverToBoxAdapter(
                  child: CarouselWidget(
                    characters: charsListCubit.heroes,
                    onCardPressed: (selected) => Navigator.pushNamed(
                      context,
                      CharacterDetailScreen.routeName,
                      arguments: selected,
                    ),
                  ),
                ),

          // lista de personagens
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                if (index == widget.recordCount) {
                  return const LinearProgressIndicator();
                }
                return widget.characters.isNotEmpty
                    ? Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: CharacterListItem(
                          character: widget.characters[index],
                          onCardPressed: (selected) => Navigator.pushNamed(
                            context,
                            CharacterDetailScreen.routeName,
                            arguments: selected,
                          ),
                        ),
                      )
                    : Container();
              },
              childCount: widget.recordCount + 1,
            ),
          ),
        ],
      ),
    );
  }
}

Widget horizontalSkeleton = SizedBox(
  height: 200.0,
  child: ListView(
    physics: const BouncingScrollPhysics(),
    scrollDirection: Axis.horizontal,
    children: List.generate(
      5,
      (index) => Skeleton.card(
        baseColor: Colors.grey,
        width: 150,
      ),
    ),
  ),
);
