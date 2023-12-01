import 'package:flutter_config/flutter_config.dart';
import 'package:weather_app/core/di/injectable.dart';

Future<void> initializeApp() async {
  configureDependencies();
}

String getBaseUrl() {
  final host = FlutterConfig.get('HOST');
  return 'https://$host';
}
