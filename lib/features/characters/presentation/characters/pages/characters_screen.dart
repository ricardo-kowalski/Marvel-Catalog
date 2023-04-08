// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:marvel_catalog/features/characters/presentation/characters/characters_cubit/characters_cubit.dart';
// import 'package:marvel_catalog/features/characters/presentation/characters/widgets/character_list_item.dart';

// import '../../domain/entities/character.dart';
// import 'character_list_view.dart';
// import 'characters_cubit/characters_state.dart';

// class CharactersList extends StatelessWidget {
//   const CharactersList({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<CharactersCubit, CharactersState>(
//       // buildWhen: (previous, current) =>
//       //     (previous as CharactersLoadedState).characters.length !=
//       //     (current as CharactersLoadedState).characters.length,
//       builder: (context, state) => state.maybeWhen(
//         loaded: (characters, totalLoaded, previousTotalLoaded) {
//           print(characters);
//           print(characters.length);
//           return _buildList(characters);
//         },
//         // loaded: (characters, totalLoaded, previousTotalLoaded) =>
//         //     const CharacterListView(),
//         loading: () => const Center(child: CircularProgressIndicator()),
//         loadingMorePages: () =>
//             const Center(child: CircularProgressIndicator()),
//         empty: () => const Center(child: Text('lista vazia')),
//         error: (error) => Center(child: Text(error)),
//         orElse: () => Container(),
//       ),
//     );
//   }

//   Widget _buildList(List<Character> characters) {
//     return ListView.builder(
//       itemBuilder: (context, index) {
//         final character = characters[index];
//         return CharacterListItem(character: character);
//       },
//       itemCount: characters.length,
//     );
//   }
// }
