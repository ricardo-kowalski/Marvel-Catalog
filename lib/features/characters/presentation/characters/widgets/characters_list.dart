import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_catalog/features/characters/data/errors/no_connection_exception.dart';
import 'package:marvel_catalog/features/characters/data/errors/server_exception.dart';
import 'package:marvel_catalog/features/characters/data/errors/unknown_exception.dart';
import 'package:marvel_catalog/features/characters/presentation/characters/inifinite_scroll_cubit/infinite_scroll_cubit.dart';
import 'package:marvel_catalog/features/characters/presentation/characters/inifinite_scroll_cubit/infinite_scroll_state.dart';
import 'package:marvel_catalog/features/characters/presentation/characters/widgets/character_list_item.dart';

import 'center_image_widget.dart';

class CharactersList extends StatefulWidget {
  const CharactersList({
    super.key,
  });

  @override
  State<CharactersList> createState() => _CharactersListState();
}

class _CharactersListState extends State<CharactersList> {
  late InfiniteScrollCubit infiniteScrollCubit;
  late StreamSubscription _subscription;

  @override
  void initState() {
    super.initState();
    infiniteScrollCubit = context.read<InfiniteScrollCubit>();
    infiniteScrollCubit.init();

    _subscription = infiniteScrollCubit.stream.listen((state) {
      // snackbar "sem conexão" exibida quando o app já está rodando
      if (state is FetchingErrorState && state.error is NoConnectionException) {
        ScaffoldMessenger.of(context)
          ..removeCurrentSnackBar()
          ..showSnackBar(
            SnackBar(
              behavior: SnackBarBehavior.floating,
              content: const Text('Sem internet'),
              action: SnackBarAction(
                label: 'recarregar',
                onPressed: () => infiniteScrollCubit.getMoreData(),
              ),
              duration: const Duration(hours: 1),
            ),
          );
      } else {
        ScaffoldMessenger.of(context).removeCurrentSnackBar();
      }
    });
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: RefreshIndicator(
        onRefresh: () => infiniteScrollCubit.init(),
        child: BlocBuilder<InfiniteScrollCubit, InfiniteScrollState>(
          builder: (BuildContext context, state) {
            if (state is FetchingErrorState) {
              switch (state.error.runtimeType) {
                case NoConnectionException:
                  // erro exibido ao iniciar o app
                  if (infiniteScrollCubit.fetchedRecords.isEmpty) {
                    return CenterImageWidget(
                      error: state.error as PlatformException,
                      pathImage: 'assets/images/spider_no_connection.png',
                      action: ElevatedButton(
                        child: const Text('Tentar novamente'),
                        onPressed: () => infiniteScrollCubit.init(),
                      ),
                    );
                  }
                  break;
                case UnknownException:
                case ServerException:
                  return CenterImageWidget(
                    error: state.error as PlatformException,
                    pathImage: 'assets/images/spider_unknown.png',
                    action: ElevatedButton(
                      child: const Text('Tentar novamente'),
                      onPressed: () => infiniteScrollCubit.init(),
                    ),
                  );
                default:
                  return CenterImageWidget(
                    error: state.error as PlatformException,
                    pathImage: 'assets/images/spider_oh_no.png',
                    action: ElevatedButton(
                      child: const Text('Tentar novamente'),
                      onPressed: () => infiniteScrollCubit.init(),
                    ),
                  );
              }
            }

            return CustomScrollView(
              controller: infiniteScrollCubit.scrollController,
              slivers: [
                SliverAppBar(
                  expandedHeight: 300,
                  title: Text(
                    'widget.title',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  pinned: true,
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
                SliverToBoxAdapter(child: horizontalList1),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      final characters = infiniteScrollCubit.fetchedRecords;
                      if (index == characters.length) {
                        return Opacity(
                          opacity: infiniteScrollCubit.isLoading ? 1 : 0,
                          // child: const LinearProgressIndicator(),
                          child: const Center(
                            child: CircularProgressIndicator(),
                          ),
                        );
                      }
                      return CharacterListItem(character: characters[index]);
                    },
                    childCount: infiniteScrollCubit.fetchedRecords.length + 1,
                  ),
                  // controller: infiniteScrollCubit.scrollController,
                  // children: [
                  //   ListView.builder(
                  //     controller: infiniteScrollCubit.scrollController,
                  //     itemCount: infiniteScrollCubit.fetchedRecords.length + 1,
                  //     itemBuilder: (BuildContext context, int index) {
                  //       final characters = infiniteScrollCubit.fetchedRecords;
                  //       if (index == characters.length) {
                  //         return Opacity(
                  //           opacity: infiniteScrollCubit.isLoading ? 1 : 0,
                  //           child: const LinearProgressIndicator(),
                  //         );
                  //       }
                  //       return CharacterListItem(character: characters[index]);
                  //     },
                  //   ),
                  // ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

Widget horizontalList1 = Container(
    margin: const EdgeInsets.symmetric(vertical: 20.0),
    height: 200.0,
    child: ListView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          width: 160.0,
          color: Colors.red,
        ),
        Container(
          width: 160.0,
          color: Colors.orange,
        ),
        Container(
          width: 160.0,
          color: Colors.pink,
        ),
        Container(
          width: 160.0,
          color: Colors.yellow,
        ),
        Container(
          width: 160.0,
          color: Colors.amber,
        ),
      ],
    ));
