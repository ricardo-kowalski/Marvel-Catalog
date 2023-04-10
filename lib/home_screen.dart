// import 'dart:async';
// import 'dart:math';

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:marvel_catalog/core/app_exception.dart';
// import 'package:marvel_catalog/features/characters/data/errors/no_connection_exception.dart';
// import 'package:marvel_catalog/features/characters/data/errors/server_exception.dart';
// import 'package:marvel_catalog/features/characters/data/errors/unknown_exception.dart';
// import 'package:marvel_catalog/features/characters/presentation/characters/header_heroes_cubit/header_heroes_cubit.dart';
// import 'package:marvel_catalog/features/characters/presentation/characters/header_heroes_cubit/header_heroes_state.dart';
// import 'package:marvel_catalog/features/characters/presentation/characters/inifinite_scroll_cubit/infinite_scroll_cubit.dart';
// import 'package:marvel_catalog/features/characters/presentation/characters/inifinite_scroll_cubit/infinite_scroll_state.dart';
// import 'package:marvel_catalog/features/characters/presentation/characters/widgets/character_card_button.dart';
// import 'package:marvel_catalog/features/characters/presentation/characters/widgets/character_list_item.dart';
// import 'package:marvel_catalog/features/characters/presentation/characters/widgets/skeleton.dart';
// import 'package:result_dart/result_dart.dart';

// import 'features/characters/domain/entities/character.dart';
// import 'features/characters/presentation/characters/all_characters_cubit/all_characters_cubit.dart';
// import 'features/characters/presentation/characters/all_characters_cubit/all_characters_state.dart';
// import 'features/characters/presentation/characters/widgets/center_image_widget.dart';

// class HomeScreen extends StatefulWidget {
//   final String title;
//   const HomeScreen({
//     super.key,
//     required this.title,
//   });

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   late AllCharactersCubit charsListCubit;
//   late HeaderHeroesCubit headerHeroesCubit;
//   late StreamSubscription _subscription;
//   String message = '';
//   late ScrollController scrollController;

//   Future<void> initController() async {
//     // await charsListCubit.getMoreData();
//     // scrollController.addListener(_detectScrolledToEnd());
//     scrollController.addListener(_scrollListener);
//   }

//   _scrollListener() async {
//     if (scrollController.offset >= scrollController.position.maxScrollExtent &&
//         !scrollController.position.outOfRange) {
//       setState(() {
//         message = "reach the bottom";
//       });
//       print("reach the bottom");
//       await charsListCubit.load();
//     }
//     if (scrollController.offset <= scrollController.position.minScrollExtent &&
//         !scrollController.position.outOfRange) {
//       setState(() {
//         message = "reach the top";
//       });
//       print("reach the top");
//     }
//   }

//   _detectScrolledToEnd() async {
//     if (scrollController.position.pixels ==
//         scrollController.position.maxScrollExtent) {
//       await charsListCubit.load();
//     }
//     print('asdasd');
//   }

//   @override
//   void initState() {
//     super.initState();
//     //
//     charsListCubit = context.read<AllCharactersCubit>();
//     //
//     headerHeroesCubit = context.read<HeaderHeroesCubit>();
//     headerHeroesCubit.init();
//     //
//     scrollController = ScrollController();
//     // scrollController.addListener(_detectScrolledToEnd());
//     initController();

//     // _subscription = charsListCubit.stream.listen((state) {
//     //   // snackbar "sem conexão" exibida quando o app já está rodando
//     //   if (state is AllCharactersFailedState &&
//     //       state.error is NoConnectionException) {
//     //     ScaffoldMessenger.of(context).showSnackBar(
//     //       SnackBar(
//     //         behavior: SnackBarBehavior.floating,
//     //         content: const Text('Sem internet'),
//     //         action: SnackBarAction(
//     //           label: 'recarregar',
//     //           onPressed: () => charsListCubit.refreshList(),
//     //         ),
//     //         duration: const Duration(hours: 1),
//     //       ),
//     //     );
//     //   } else {
//     //     ScaffoldMessenger.of(context).removeCurrentSnackBar();
//     //   }
//     // });
//   }

//   @override
//   void dispose() {
//     _subscription.cancel();
//     scrollController.removeListener(_detectScrolledToEnd);
//     scrollController.dispose();
//     super.dispose();
//   }

//   Future<void> _onRefresh() async {
//     charsListCubit.refreshList();
//     headerHeroesCubit.init();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: RefreshIndicator(
//         onRefresh: _onRefresh,
//         child: CustomScrollView(
//           controller: scrollController,
//           slivers: [
//             SliverAppBar(
//               expandedHeight: 300,
//               title: Text(
//                 widget.title,
//                 style: Theme.of(context).textTheme.headlineSmall,
//               ),
//               elevation: 0,
//               pinned: true,
//               centerTitle: true,
//               flexibleSpace: FlexibleSpaceBar(
//                 background: Hero(
//                   tag: 'widget.heroTag',
//                   child: Image.asset(
//                     height: 200,
//                     'assets/images/spider_no_connection.png',
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//             ),
//             // SliverToBoxAdapter(child: horizontalList1),
//             BlocBuilder<HeaderHeroesCubit, HeaderHeroesState>(
//               builder: (context, heroesState) {
//                 if (heroesState is FetchingHeaderHeroesErrorState) {
//                   return Container(
//                     margin: const EdgeInsets.symmetric(vertical: 20.0),
//                     height: 200.0,
//                     child: const Text('error'),
//                   );
//                 }

//                 return headerHeroesCubit.isLoading
//                     ? SliverToBoxAdapter(child: horizontalList1)
//                     : buildHorizontalSliverList();
//               },
//             ),

//             BlocBuilder<AllCharactersCubit, AllCharactersState>(
//               builder: (context, scrollState) => scrollState.maybeWhen(
//                 loaded: (characters, _, recordCount) => SliverList(
//                   delegate: SliverChildBuilderDelegate(
//                     (BuildContext context, int index) {
//                       if (index == recordCount) {
//                         // return Opacity(
//                         // opacity: charsListCubit.isLoadingMore ? 1 : 0,
//                         // child: const Padding(
//                         //   padding: EdgeInsets.symmetric(vertical: 20.0),
//                         //   child: Center(
//                         //     child: CircularProgressIndicator(),
//                         //   ),
//                         // ),
//                         // );
//                         return const LinearProgressIndicator();
//                       }
//                       return characters.isNotEmpty
//                           ? Padding(
//                               padding: const EdgeInsets.all(4.0),
//                               child: CharacterListItem(
//                                   character: characters[index]),
//                             )
//                           : Container();
//                     },
//                     childCount: recordCount + 1,
//                   ),
//                 ),
//                 loading: () {
//                   return const SliverFillRemaining(
//                     child: Opacity(
//                       opacity: 0.5,
//                       child: Center(
//                         child: CircularProgressIndicator(),
//                       ),
//                     ),
//                   );
//                 },
//                 error: (error) => SliverToBoxAdapter(
//                   child: Center(
//                     child: ElevatedButton(
//                       onPressed: _onRefresh,
//                       child: const Text('Tentar novamente'),
//                     ),
//                   ),
//                 ),
//                 orElse: () => SliverToBoxAdapter(),
//               ),

//               /*
//                 {
//               // caso algum erro ocorra ao iniciar o app
//               if (scrollState is ScrollFailedState &&
//                   charsListCubit.fetchedRecords.isEmpty) {
//                 return _handleError(scrollState);
//               }

//               return SliverList(
//                 delegate: SliverChildBuilderDelegate(
//                   (BuildContext context, int index) {
//                     if (index == recordCount) {
//                       return Opacity(
//                         opacity: charsListCubit.isLoading ? 1 : 0,
//                         child: const Center(
//                           child: CircularProgressIndicator(),
//                         ),
//                       );
//                     }
//                     return characters.isNotEmpty
//                         ? Padding(
//                             padding: const EdgeInsets.all(4.0),
//                             child:
//                                 CharacterListItem(character: characters[index]),
//                           )
//                         : Container();
//                   },
//                   childCount: recordCount + 1,
//                 ),
//               );
//             }
            
//             */
//             )
//           ],
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

//   Widget _handleError(AppException error) {
//     switch (error.runtimeType) {
//       case NoConnectionException:
//         return CenterImageWidget(
//           error: error,
//           pathImage: 'assets/images/spider_no_connection.png',
//           action: ElevatedButton(
//             onPressed: _onRefresh,
//             child: const Text('Tentar novamente'),
//           ),
//         );

//       case UnknownException:
//       case ServerException:
//         return CenterImageWidget(
//           error: error,
//           pathImage: 'assets/images/spider_unknown.png',
//           action: ElevatedButton(
//             onPressed: _onRefresh,
//             child: const Text('Tentar novamente'),
//           ),
//         );
//       default:
//         return CenterImageWidget(
//           error: error,
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
