import 'package:flutter/material.dart';
import 'api_key.dart';
import 'environment.dart';

void main() {
  runApp(const MyApp());
}

final environment = getEnvironment();
final apiKey = ApiKey();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(title: environment.name),
      debugShowCheckedModeBanner: (environment.type !=
          EnvironmentType
              .prod), // adiciona flag apenas para ambientes diferentes de produção
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
      body: Column(
        children: [
          const Text('PUBLIC KEY: ${ApiKey.publicKey}'),
          Text('MD5 HASH: ${ApiKey.hash}'),
        ],
      ),
    );
  }
}
