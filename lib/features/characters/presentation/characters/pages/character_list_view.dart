// import 'dart:math';

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
// import 'package:marvel_catalog/features/characters/presentation/characters/characters_cubit/characters_cubit.dart';
// import 'package:marvel_catalog/features/characters/presentation/characters/widgets/character_list_item.dart';

// import '../../domain/entities/character.dart';

// class CharacterListView extends StatefulWidget {
//   const CharacterListView({super.key});

//   @override
//   State<CharacterListView> createState() => _CharacterListViewState();
// }

// class _CharacterListViewState extends State<CharacterListView> {
//   static const _pageSize = 20;

//   final PagingController<int, Character> _pagingController =
//       PagingController(firstPageKey: 0);

//   late CharactersCubit cubit;

//   @override
//   void initState() {
//     cubit = context.read<CharactersCubit>();
//     _pagingController.addPageRequestListener((pageKey) {
//       _fetchPage(pageKey);
//       // cubit.loadAndAppend(offset: pageKey, limit: _pageSize);
//     });
//     super.initState();
//   }

//   Future<void> _fetchPage(int pageKey) async {
//     try {
//       await cubit.loadAndAppend(offset: pageKey, limit: _pageSize);

//       final newItems = cubit.lastsLoaded();

//       final isLastPage = newItems.length < _pageSize;

//       if (isLastPage) {
//         _pagingController.appendLastPage(newItems);
//         print('>>>>> adicionando ultima página');
//       } else {
//         final nextPageKey = pageKey + newItems.length;
//         _pagingController.appendPage(newItems, nextPageKey);
//         print('>>>>> adicionando uma página');
//       }
//     } catch (error) {
//       _pagingController.error = error;
//     }
//   }

//   @override
//   Widget build(BuildContext context) => PagedListView<int, Character>(
//         pagingController: _pagingController,
//         builderDelegate: PagedChildBuilderDelegate<Character>(
//           itemBuilder: (context, item, index) => CharacterListItem(
//             character: item,
//           ),
//         ),
//       );

//   @override
//   void dispose() {
//     _pagingController.dispose();
//     super.dispose();
//   }
// }
