import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/characters/characters.dart';
import 'config/environment.dart';
import 'features/characters/presentation/pages/screens/character_detail_screen.dart';
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
        BlocProvider<AllCharactersCubit>(
          create: (context) => di.sl.get<AllCharactersCubit>(),
        ),
      ],
      child: MaterialApp(
        title: 'Marvel List',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        // home: HomeScreen(),
        debugShowCheckedModeBanner: !environment.isProd,
        routes: {
          '/': (context) => const HomeScreen(),
          CharacterDetailScreen.routeName: (context) =>
              const CharacterDetailScreen(),
        },
      ),
    );
  }
}
