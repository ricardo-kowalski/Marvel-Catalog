import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../presentation.dart';
import '../widgets/error_handler_widget.dart';
import 'load_content_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () => context.read<AllCharactersCubit>().refreshList(),
        child: BlocBuilder<AllCharactersCubit, AllCharactersState>(
          builder: (context, scrollState) {
            return scrollState.when(
              loaded: (characters, _, recordCount) => LoadedContentScreen(
                characters: characters,
                recordCount: recordCount,
              ),
              loading: () {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              error: (error) => ErrorHandlerWidget(
                error: error,
                onRefresh: () =>
                    context.read<AllCharactersCubit>().refreshList(),
              ),
            );
          },
        ),
      ),
    );
  }
}
