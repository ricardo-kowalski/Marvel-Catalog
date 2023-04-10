import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_catalog/features/characters/presentation/characters/inifinite_scroll_cubit/infinite_scroll_cubit.dart';
import 'package:marvel_catalog/home_screen.dart';
import 'package:marvel_catalog/home_screen_2.dart';
import 'config/environment.dart';
import 'features/characters/presentation/characters/all_characters_cubit/all_characters_cubit.dart';
import 'features/characters/presentation/characters/header_heroes_cubit/header_heroes_cubit.dart';

import 'features/characters/presentation/characters/widgets/characters_list.dart';
import 'injection.dart' as di;

void main() async {
  await di.init();
  runApp(const MyApp());
}

final environment = getEnvironment();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<InfiniteScrollCubit>(
          create: (context) => di.sl.get<InfiniteScrollCubit>(),
        ),
        BlocProvider<AllCharactersCubit>(
          create: (context) => di.sl.get<AllCharactersCubit>(),
        ),
        // BlocProvider<HeaderHeroesCubit>(
        //   create: (context) => di.sl.get<HeaderHeroesCubit>(),
        // ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: HomeScreen2(title: environment.name),
        // home: CharactersList(title: environment.name),
        debugShowCheckedModeBanner: !environment.isProd,
      ),
    );
  }
}
