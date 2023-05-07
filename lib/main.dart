import 'package:explore/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ExploreApp());
}

/// {@template explore_app}
/// The ExploreApp widget is the root of the application.
/// {@endtemplate}
class ExploreApp extends StatefulWidget {
  /// {@macro explore_app}
  const ExploreApp({super.key});

  @override
  State<ExploreApp> createState() => _ExploreAppState();
}

class _ExploreAppState extends State<ExploreApp> {
  late final AppTheme _appTheme;

  @override
  void initState() {
    super.initState();
    _appTheme = AppTheme();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: _appTheme.light,
      darkTheme: _appTheme.dark,
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
      appBar: AppBar(
        title: const Text('Explore'),
      ),
      body: const Center(
        child: Text('Explore'),
      ),
    );
  }
}
