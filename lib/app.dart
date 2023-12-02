import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/core.dart';
import 'package:weather_app/presentation/pages/home/bloc/favorite_location/favorite_location_cubit.dart';
import 'package:weather_app/presentation/pages/home/bloc/unit_settings/unit_settings_cubit.dart';

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
    return MultiBlocProvider(
      providers: [
        BlocProvider<FavoriteLocationCubit>(
          create: (_) => sl()..loadSavedLocationList(),
        ),
        BlocProvider<UnitSettingsCubit>(
          create: (context) => sl()..loadUnitSettings(),
          lazy: false,
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Weather App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        localizationsDelegates: Translation.localizationsDelegates,
        supportedLocales: Translation.supportedLocales,
        routerConfig: widget.router.config(),
      ),
    );
  }
}
