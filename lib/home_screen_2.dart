import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_catalog/core/app_exception.dart';
import 'package:marvel_catalog/features/characters/data/errors/no_connection_exception.dart';
import 'package:marvel_catalog/features/characters/data/errors/server_exception.dart';
import 'package:marvel_catalog/features/characters/data/errors/unknown_exception.dart';
import 'package:marvel_catalog/features/characters/presentation/characters/widgets/character_card_button.dart';
import 'package:marvel_catalog/features/characters/presentation/characters/widgets/character_list_item.dart';
import 'package:marvel_catalog/features/characters/presentation/characters/widgets/skeleton.dart';

import 'features/characters/presentation/characters/all_characters_cubit/all_characters_cubit.dart';
import 'features/characters/presentation/characters/all_characters_cubit/all_characters_state.dart';
import 'features/characters/presentation/characters/widgets/center_image_widget.dart';

class HomeScreen2 extends StatefulWidget {
  final String title;
  const HomeScreen2({
    super.key,
    required this.title,
  });

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  late AllCharactersCubit charsListCubit;
  late StreamSubscription _subscription;

  late ScrollController scrollController;

  Future<void> initController() async {
    scrollController.addListener(_scrollListener);
  }

  _scrollListener() async {
    if (scrollController.offset >= scrollController.position.maxScrollExtent &&
        !scrollController.position.outOfRange) {
      await charsListCubit.load();
    }
  }

  @override
  void initState() {
    super.initState();
    //
    charsListCubit = context.read<AllCharactersCubit>();
    scrollController = ScrollController();
    initController();
  }

  @override
  void dispose() {
    _subscription.cancel();
    scrollController.removeListener(_scrollListener);
    scrollController.dispose();
    super.dispose();
  }

  Future<void> _onRefresh() async {
    charsListCubit.refreshList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: _onRefresh,
        child: BlocBuilder<AllCharactersCubit, AllCharactersState>(
          builder: (context, scrollState) {
            return scrollState.when(
              loaded: (characters, sampleCharacters, recordCount) =>
                  CustomScrollView(
                controller: scrollController,
                slivers: [
                  SliverAppBar(
                    expandedHeight: 300,
                    title: Text(
                      widget.title,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    elevation: 0,
                    pinned: true,
                    centerTitle: true,
                    flexibleSpace: FlexibleSpaceBar(
                      background: Hero(
                        tag: 'widget.heroTag',
                        child: Image.asset(
                          height: 200,
                          'assets/images/spider_no_connection.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  charsListCubit.isLoadingHeroes
                      ? SliverToBoxAdapter(child: horizontalList1)
                      : buildHorizontalSliverList(),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        if (index == recordCount) {
                          return const LinearProgressIndicator();
                        }
                        return characters.isNotEmpty
                            ? Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: CharacterListItem(
                                  character: characters[index],
                                ),
                              )
                            : Container();
                      },
                      childCount: recordCount + 1,
                    ),
                  ),
                ],
              ),
              loading: () {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              error: (error) => _handleError(error),
            );
          },
        ),
      ),
    );
  }

  Widget buildHorizontalSliverList() {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 200.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: charsListCubit.heroes.length,
          itemBuilder: (context, index) {
            final hero = charsListCubit.heroes[index];
            return SizedBox(
              width: 150.0,
              child: CharacterCardButton(
                imageUrl: hero.thumbnail!.full,
                onPressed: () {},
                title: hero.name ?? '',
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _handleError(AppException error) {
    switch (error.runtimeType) {
      case NoConnectionException:
        return CenterImageWidget(
          error: error,
          pathImage: 'assets/images/spider_no_connection.png',
          action: ElevatedButton(
            onPressed: _onRefresh,
            child: const Text('Tentar novamente'),
          ),
        );
      case UnknownException:
      case ServerException:
        return CenterImageWidget(
          error: error,
          pathImage: 'assets/images/spider_unknown.png',
          action: ElevatedButton(
            onPressed: _onRefresh,
            child: const Text('Tentar novamente'),
          ),
        );
      default:
        return CenterImageWidget(
          error: error,
          pathImage: 'assets/images/spider_oh_no.png',
          action: ElevatedButton(
            onPressed: _onRefresh,
            child: const Text('Tentar novamente'),
          ),
        );
    }
  }
}

Widget horizontalList1 = SizedBox(
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
