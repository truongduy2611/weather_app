// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:weather_app/core/di/injectable.dart' as _i9;
import 'package:weather_app/data/datasource/datasource.dart' as _i8;
import 'package:weather_app/data/datasource/network_clients/current_weather_forecast_client.dart'
    as _i4;
import 'package:weather_app/data/datasource/weather_forecast_api_datasource.dart'
    as _i5;
import 'package:weather_app/data/repository/weather_forecast_repository_impl.dart'
    as _i7;
import 'package:weather_app/domain/repository/weather_forecast_repository.dart'
    as _i6;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i3.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i4.CurrentWeatherForecastClient>(
        () => _i4.CurrentWeatherForecastClient(
              gh<_i3.Dio>(),
              baseUrl: gh<String>(),
            ));
    gh.lazySingleton<_i5.WeatherForecastApiDataSource>(() =>
        _i5.WeatherForecastApiDataSource(
            gh<_i4.CurrentWeatherForecastClient>()));
    gh.lazySingleton<_i6.WeatherForecastRepository>(() =>
        _i7.WeatherForecastRepositoryImpl(
            gh<_i8.WeatherForecastApiDataSource>()));
    return this;
  }
}

class _$RegisterModule extends _i9.RegisterModule {}
