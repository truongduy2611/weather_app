import 'package:flutter_config/flutter_config.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:weather_app/core/core.dart';

Future<void> initializeApp() async {
  await Hive.initFlutter();
  await configureDependencies();
}

String getBaseUrl() {
  final host = FlutterConfig.get('HOST');
  return 'https://$host';
}
