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
import 'package:weather_app/core/di/injectable.dart' as _i14;
import 'package:weather_app/data/datasource/datasource.dart' as _i9;
import 'package:weather_app/data/datasource/location_suggestion_api_datasource.dart'
    as _i6;
import 'package:weather_app/data/datasource/network_clients/current_weather_forecast_client.dart'
    as _i5;
import 'package:weather_app/data/datasource/network_clients/location_suggestions_client.dart'
    as _i4;
import 'package:weather_app/data/datasource/weather_forecast_api_datasource.dart'
    as _i11;
import 'package:weather_app/data/repository/location_suggestion_repository_impl.dart'
    as _i8;
import 'package:weather_app/data/repository/weather_forecast_repository_impl.dart'
    as _i13;
import 'package:weather_app/domain/repository/location_suggestion_repository.dart'
    as _i7;
import 'package:weather_app/domain/repository/weather_forecast_repository.dart'
    as _i12;
import 'package:weather_app/presentation/pages/home/bloc/search_location/search_location_bloc.dart'
    as _i10;

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
    gh.lazySingleton<_i4.LocationSuggestionsClient>(
        () => _i4.LocationSuggestionsClient(gh<_i3.Dio>()));
    gh.lazySingleton<_i5.CurrentWeatherForecastClient>(
        () => _i5.CurrentWeatherForecastClient(gh<_i3.Dio>()));
    gh.lazySingleton<_i6.LocationSuggestionApiDataSource>(() =>
        _i6.LocationSuggestionApiDataSource(
            gh<_i4.LocationSuggestionsClient>()));
    gh.lazySingleton<_i7.LocationSuggestionRepository>(() =>
        _i8.LocationSuggestionRepositoryImpl(
            gh<_i9.LocationSuggestionApiDataSource>()));
    gh.factory<_i10.SearchLocationBloc>(
        () => _i10.SearchLocationBloc(gh<_i7.LocationSuggestionRepository>()));
    gh.lazySingleton<_i11.WeatherForecastApiDataSource>(() =>
        _i11.WeatherForecastApiDataSource(
            gh<_i5.CurrentWeatherForecastClient>()));
    gh.lazySingleton<_i12.WeatherForecastRepository>(() =>
        _i13.WeatherForecastRepositoryImpl(
            gh<_i9.WeatherForecastApiDataSource>()));
    return this;
  }
}

class _$RegisterModule extends _i14.RegisterModule {}
