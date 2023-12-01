import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:weather_app/app.dart';
import 'package:weather_app/core/config.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterConfig.loadEnvVariables();
  await initializeApp();
  runApp(const MyApp());
}
