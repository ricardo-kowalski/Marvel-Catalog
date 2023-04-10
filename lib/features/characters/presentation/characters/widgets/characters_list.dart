// import 'dart:async';
// import 'dart:math';

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:marvel_catalog/core/app_exception.dart';
// import 'package:marvel_catalog/features/characters/data/errors/no_connection_exception.dart';
// import 'package:marvel_catalog/features/characters/data/errors/server_exception.dart';
// import 'package:marvel_catalog/features/characters/data/errors/unknown_exception.dart';
// import 'package:marvel_catalog/features/characters/presentation/characters/header_heroes_cubit/header_heroes_state.dart';
// import 'package:marvel_catalog/features/characters/presentation/characters/inifinite_scroll_cubit/infinite_scroll_cubit.dart';
// import 'package:marvel_catalog/features/characters/presentation/characters/inifinite_scroll_cubit/infinite_scroll_state.dart';
// import 'package:marvel_catalog/features/characters/presentation/characters/widgets/character_card_button.dart';
// import 'package:marvel_catalog/features/characters/presentation/characters/widgets/character_list_item.dart';
// import 'package:marvel_catalog/features/characters/presentation/characters/widgets/skeleton.dart';
// import 'package:result_dart/result_dart.dart';

// import '../header_heroes_cubit/header_heroes_cubit.dart';
// import 'center_image_widget.dart';

// class CharactersList extends StatefulWidget {
//   final String title;
//   const CharactersList({
//     super.key,
//     required this.title,
//   });

//   @override
//   State<CharactersList> createState() => _CharactersListState();
// }

// class _CharactersListState extends State<CharactersList> {
//   late InfiniteScrollCubit infiniteScrollCubit;
//   late HeaderHeroesCubit headerHeroesCubit;
//   late StreamSubscription _subscription;

//   @override
//   void initState() {
//     super.initState();
//     infiniteScrollCubit = context.read<InfiniteScrollCubit>();
//     headerHeroesCubit = context.read<HeaderHeroesCubit>();
//     infiniteScrollCubit.init();
//     headerHeroesCubit.init();

//     _subscription = infiniteScrollCubit.stream.listen((state) {
//       // snackbar "sem conexão" exibida quando o app já está rodando
//       if (state is FetchingErrorState && state.error is NoConnectionException) {
//         ScaffoldMessenger.of(context)
//           ..removeCurrentSnackBar()
//           ..showSnackBar(
//             SnackBar(
//               behavior: SnackBarBehavior.floating,
//               content: const Text('Sem internet'),
//               action: SnackBarAction(
//                 label: 'recarregar',
//                 onPressed: () => infiniteScrollCubit.getMoreData(),
//               ),
//               duration: const Duration(hours: 1),
//             ),
//           );
//       } else {
//         ScaffoldMessenger.of(context).removeCurrentSnackBar();
//       }
//     });
//   }

//   @override
//   void dispose() {
//     _subscription.cancel();
//     super.dispose();
//   }

//   Future<void> _onRefresh() async {
//     infiniteScrollCubit.init();
//     headerHeroesCubit.init();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final characters = infiniteScrollCubit.fetchedRecords;

//     return Scaffold(
//       body: RefreshIndicator(
//         onRefresh: _onRefresh,
//         child: BlocBuilder<InfiniteScrollCubit, InfiniteScrollState>(
//           builder: (BuildContext context, infiniteScrollState) {
//             // caso algum erro ocorra ao iniciar o app
//             if (infiniteScrollState is FetchingErrorState &&
//                 infiniteScrollCubit.fetchedRecords.isEmpty) {
//               return _handleError(infiniteScrollState);
//             }

//             return CustomScrollView(
//               controller: infiniteScrollCubit.scrollController,
//               slivers: [
//                 SliverAppBar(
//                   expandedHeight: 300,
//                   title: Text(
//                     widget.title,
//                     style: Theme.of(context).textTheme.headlineSmall,
//                   ),
//                   elevation: 0,
//                   pinned: true,
//                   centerTitle: true,
//                   flexibleSpace: FlexibleSpaceBar(
//                     background: Hero(
//                       tag: 'widget.heroTag',
//                       child: Image.asset(
//                         height: 200,
//                         'assets/images/spider_no_connection.png',
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                 ),
//                 // SliverToBoxAdapter(child: horizontalList1),
//                 BlocBuilder<HeaderHeroesCubit, HeaderHeroesState>(
//                   builder: (context, heroesState) {
//                     if (heroesState is FetchingHeaderHeroesErrorState) {
//                       return Container(
//                         margin: const EdgeInsets.symmetric(vertical: 20.0),
//                         height: 200.0,
//                         child: const Text('error'),
//                       );
//                     }

//                     return headerHeroesCubit.isLoading
//                         ? SliverToBoxAdapter(child: horizontalList1)
//                         : buildHorizontalSliverList();
//                   },
//                 ),
//                 SliverList(
//                   delegate: SliverChildBuilderDelegate(
//                     (BuildContext context, int index) {
//                       if (index == characters.length) {
//                         return Opacity(
//                           opacity: infiniteScrollCubit.isLoading ? 1 : 0,
//                           child: const Center(
//                             child: CircularProgressIndicator(),
//                           ),
//                         );
//                       }
//                       return characters.isNotEmpty
//                           ? Padding(
//                               padding: const EdgeInsets.all(4.0),
//                               child: CharacterListItem(
//                                   character: characters[index]),
//                             )
//                           : Container();
//                     },
//                     childCount: characters.length + 1,
//                   ),
//                 ),
//               ],
//             );
//           },
//         ),
//       ),
//     );
//   }

//   SliverToBoxAdapter buildHorizontalSliverList() {
//     return SliverToBoxAdapter(
//       child: SizedBox(
//         height: 200.0,
//         child: ListView.builder(
//           scrollDirection: Axis.horizontal,
//           itemCount: headerHeroesCubit.heroes.length,
//           itemBuilder: (context, index) {
//             final hero = headerHeroesCubit.heroes[index];
//             return SizedBox(
//               width: 150.0,
//               child: CharacterCardButton(
//                 imageUrl: hero.thumbnail!.full,
//                 onPressed: () {},
//                 title: hero.name ?? '',
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }

//   Widget _handleError(FetchingErrorState errorState) {
//     switch (errorState.error.runtimeType) {
//       case NoConnectionException:
//         return CenterImageWidget(
//           error: errorState.error,
//           pathImage: 'assets/images/spider_no_connection.png',
//           action: ElevatedButton(
//             onPressed: _onRefresh,
//             child: const Text('Tentar novamente'),
//           ),
//         );

//       case UnknownException:
//       case ServerException:
//         return CenterImageWidget(
//           error: errorState.error,
//           pathImage: 'assets/images/spider_unknown.png',
//           action: ElevatedButton(
//             onPressed: _onRefresh,
//             child: const Text('Tentar novamente'),
//           ),
//         );
//       default:
//         return CenterImageWidget(
//           error: errorState.error,
//           pathImage: 'assets/images/spider_oh_no.png',
//           action: ElevatedButton(
//             onPressed: _onRefresh,
//             child: const Text('Tentar novamente'),
//           ),
//         );
//     }
//   }
// }
// // ELIMINAR REPETIÇÕES NA LISTA

// Widget horizontalList1 = SizedBox(
//   height: 200.0,
//   child: ListView(
//     physics: const BouncingScrollPhysics(),
//     scrollDirection: Axis.horizontal,
//     children: List.generate(
//       5,
//       (index) => Skeleton.card(
//         baseColor: Colors.grey,
//         width: 150,
//       ),
//     ),
//   ),
// );
