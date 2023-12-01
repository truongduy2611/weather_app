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
import 'package:weather_app/core/di/injectable.dart' as _i21;
import 'package:weather_app/data/datasource/datasource.dart' as _i8;
import 'package:weather_app/data/datasource/favorite_forecast_local_datasource.dart'
    as _i5;
import 'package:weather_app/data/datasource/local/favorite_data_box.dart'
    as _i4;
import 'package:weather_app/data/datasource/location_suggestion_api_datasource.dart'
    as _i11;
import 'package:weather_app/data/datasource/network_clients/current_weather_forecast_client.dart'
    as _i10;
import 'package:weather_app/data/datasource/network_clients/location_suggestions_client.dart'
    as _i9;
import 'package:weather_app/data/datasource/weather_forecast_api_datasource.dart'
    as _i15;
import 'package:weather_app/data/repository/favorite_forecast_repository_impl.dart'
    as _i7;
import 'package:weather_app/data/repository/location_suggestion_repository_impl.dart'
    as _i13;
import 'package:weather_app/data/repository/weather_forecast_repository_impl.dart'
    as _i17;
import 'package:weather_app/domain/repository/favorite_forecast_repository.dart'
    as _i6;
import 'package:weather_app/domain/repository/location_suggestion_repository.dart'
    as _i12;
import 'package:weather_app/domain/repository/repositories.dart' as _i19;
import 'package:weather_app/domain/repository/weather_forecast_repository.dart'
    as _i16;
import 'package:weather_app/presentation/pages/home/bloc/favorite_location/favorite_location_cubit.dart'
    as _i18;
import 'package:weather_app/presentation/pages/home/bloc/search_location/search_location_bloc.dart'
    as _i14;
import 'package:weather_app/presentation/pages/location_weather_detail/cubit/location_weather_detail_cubit.dart'
    as _i20;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i3.Dio>(() => registerModule.dio);
    await gh.lazySingletonAsync<_i4.FavoriteDataBox>(
      () => _i4.FavoriteDataBox.setup(),
      preResolve: true,
    );
    gh.lazySingleton<_i5.FavoriteForecastLocalDataSource>(
        () => _i5.FavoriteForecastLocalDataSource(gh<_i4.FavoriteDataBox>()));
    gh.lazySingleton<_i6.FavoriteForecastRepository>(() =>
        _i7.FavoriteForecastRepositoryImpl(
            gh<_i8.FavoriteForecastLocalDataSource>()));
    gh.lazySingleton<_i9.LocationSuggestionsClient>(
        () => _i9.LocationSuggestionsClient(gh<_i3.Dio>()));
    gh.lazySingleton<_i10.CurrentWeatherForecastClient>(
        () => _i10.CurrentWeatherForecastClient(gh<_i3.Dio>()));
    gh.lazySingleton<_i11.LocationSuggestionApiDataSource>(() =>
        _i11.LocationSuggestionApiDataSource(
            gh<_i9.LocationSuggestionsClient>()));
    gh.lazySingleton<_i12.LocationSuggestionRepository>(() =>
        _i13.LocationSuggestionRepositoryImpl(
            gh<_i8.LocationSuggestionApiDataSource>()));
    gh.factory<_i14.SearchLocationBloc>(
        () => _i14.SearchLocationBloc(gh<_i12.LocationSuggestionRepository>()));
    gh.lazySingleton<_i15.WeatherForecastApiDataSource>(() =>
        _i15.WeatherForecastApiDataSource(
            gh<_i10.CurrentWeatherForecastClient>()));
    gh.lazySingleton<_i16.WeatherForecastRepository>(() =>
        _i17.WeatherForecastRepositoryImpl(
            gh<_i8.WeatherForecastApiDataSource>()));
    gh.factory<_i18.FavoriteLocationCubit>(() => _i18.FavoriteLocationCubit(
          gh<_i19.WeatherForecastRepository>(),
          gh<_i19.FavoriteForecastRepository>(),
        ));
    gh.factory<_i20.LocationWeatherDetailCubit>(() =>
        _i20.LocationWeatherDetailCubit(gh<_i16.WeatherForecastRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i21.RegisterModule {}
