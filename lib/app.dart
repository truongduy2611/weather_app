import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'presentation/routing/router.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key, required this.router});

  final AppRouter router;

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Weather App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      localizationsDelegates: Translation.localizationsDelegates,
      supportedLocales: Translation.supportedLocales,
      routerConfig: widget.router.config(),
    );
  }
}
