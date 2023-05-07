import 'package:flutter/material.dart';

void main() {
  runApp(const ExploreApp());
}

/// {@template explore_app}
/// The ExploreApp widget is the root of the application.
/// {@endtemplate}
class ExploreApp extends StatelessWidget {
  /// {@macro explore_app}
  const ExploreApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

/// The first and only screen
class MyHomePage extends StatelessWidget {
  /// The first and only screen
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: const Text('Explore'),
      ),
      body: const Center(
        child: Text('Explore'),
      ),
    );
  }
}
