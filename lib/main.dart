import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_catalog/features/characters/presentation/characters/inifinite_scroll_cubit/infinite_scroll_cubit.dart';
import 'config/environment.dart';
import 'features/characters/presentation/characters/characters_cubit/characters_cubit.dart';
import 'features/characters/presentation/characters/pages/characters_screen2.dart';
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
        BlocProvider<CharactersCubit>(
          create: (context) => di.sl.get<CharactersCubit>(),
        ),
        BlocProvider<InfiniteScrollCubit>(
          create: (context) => di.sl.get<InfiniteScrollCubit>(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(title: environment.name),
        debugShowCheckedModeBanner: environment.isProd,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final String title;
  const HomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      // body: Column(
      //   children: [
      //     const Text('PUBLIC KEY: ${MarvelApi.publicKey}'),
      //     Text('MD5 HASH: ${MarvelApi.hash}'),
      //   ],
      // ),
      // body: CharactersList(),
      body: CharactersList2(),
    );
  }
}
