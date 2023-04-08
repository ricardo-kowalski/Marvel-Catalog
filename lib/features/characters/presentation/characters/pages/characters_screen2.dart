import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_catalog/features/characters/presentation/characters/inifinite_scroll_cubit/infinite_scroll_cubit.dart';
import 'package:marvel_catalog/features/characters/presentation/characters/inifinite_scroll_cubit/infinite_scroll_state.dart';
import 'package:marvel_catalog/features/characters/presentation/characters/widgets/character_list_item.dart';

class CharactersList2 extends StatefulWidget {
  const CharactersList2({super.key});

  @override
  State<CharactersList2> createState() => _CharactersList2State();
}

class _CharactersList2State extends State<CharactersList2> {
  late InfiniteScrollCubit infiniteScrollCubit;

  @override
  void initState() {
    infiniteScrollCubit = context.read<InfiniteScrollCubit>();
    super.initState();
    infiniteScrollCubit.init();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<InfiniteScrollCubit, InfiniteScrollState>(
      listener: (BuildContext context, state) async {
        // if (state is FetchingCompletedState) {
        //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //       content: Text("Atualizando registros: ${state.recordCount}")));
        // }
        if (state is FetchingErrorState) {
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Tentando novamente")));
          await Future.delayed(const Duration(seconds: 2));
          infiniteScrollCubit.startFetching();
        }
      },
      builder: (BuildContext context, state) {
        if (state is FetchingErrorState) {
          return Center(
            child: Text(state.errorMessage),
          );
        }
        return ListView.builder(
          controller: infiniteScrollCubit.scrollController,
          itemCount: infiniteScrollCubit.fetchedRecords.length + 1,
          itemBuilder: (BuildContext context, int index) {
            final characters = infiniteScrollCubit.fetchedRecords;
            if (index == characters.length) {
              return Opacity(
                opacity: infiniteScrollCubit.isLoading ? 1 : 0,
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircularProgressIndicator(),
                  ),
                ),
              );
            }
            return CharacterListItem(character: characters[index]);
          },
        );
      },
    );
  }
}
