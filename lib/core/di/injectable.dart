import 'package:dio/dio.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/core/config.dart';
import 'package:weather_app/core/di/injectable.config.dart';

final sl = GetIt.instance;

@InjectableInit(preferRelativeImports: false)
void configureDependencies() => sl.init();

@module
abstract class RegisterModule {
  @LazySingleton()
  Dio get dio => Dio(
        BaseOptions(
          baseUrl: '${getBaseUrl()}/v1',
          queryParameters: {
            'key': FlutterConfig.get('WEATHER_API_KEY'),
          },
        ),
      );
}
