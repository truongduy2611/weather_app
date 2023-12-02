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
import 'package:weather_app/core/di/injectable.dart' as _i26;
import 'package:weather_app/data/datasource/datasource.dart' as _i8;
import 'package:weather_app/data/datasource/favorite_forecast_local_datasource.dart'
    as _i5;
import 'package:weather_app/data/datasource/local/favorite_data_box.dart'
    as _i4;
import 'package:weather_app/data/datasource/local/unit_settings_box.dart'
    as _i10;
import 'package:weather_app/data/datasource/location_suggestion_api_datasource.dart'
    as _i15;
import 'package:weather_app/data/datasource/network_clients/location_suggestions_client.dart'
    as _i9;
import 'package:weather_app/data/datasource/network_clients/weather_forecast_client.dart'
    as _i14;
import 'package:weather_app/data/datasource/unit_settings_local_datasource.dart'
    as _i11;
import 'package:weather_app/data/datasource/weather_forecast_api_datasource.dart'
    as _i20;
import 'package:weather_app/data/repository/favorite_forecast_repository_impl.dart'
    as _i7;
import 'package:weather_app/data/repository/location_suggestion_repository_impl.dart'
    as _i17;
import 'package:weather_app/data/repository/unit_settings_repository_impl.dart'
    as _i13;
import 'package:weather_app/data/repository/weather_forecast_repository_impl.dart'
    as _i22;
import 'package:weather_app/domain/repository/favorite_forecast_repository.dart'
    as _i6;
import 'package:weather_app/domain/repository/location_suggestion_repository.dart'
    as _i16;
import 'package:weather_app/domain/repository/repositories.dart' as _i24;
import 'package:weather_app/domain/repository/unit_settings_repository.dart'
    as _i12;
import 'package:weather_app/domain/repository/weather_forecast_repository.dart'
    as _i21;
import 'package:weather_app/presentation/pages/home/bloc/favorite_location/favorite_location_cubit.dart'
    as _i23;
import 'package:weather_app/presentation/pages/home/bloc/search_location/search_location_bloc.dart'
    as _i18;
import 'package:weather_app/presentation/pages/home/bloc/unit_settings/unit_settings_cubit.dart'
    as _i19;
import 'package:weather_app/presentation/pages/location_weather_detail/cubit/location_weather_detail_cubit.dart'
    as _i25;

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
    await gh.lazySingletonAsync<_i10.UnitSettingsBox>(
      () => _i10.UnitSettingsBox.setup(),
      preResolve: true,
    );
    gh.lazySingleton<_i11.UnitSettingsLocalDataSource>(
        () => _i11.UnitSettingsLocalDataSource(gh<_i10.UnitSettingsBox>()));
    gh.lazySingleton<_i12.UnitSettingsRepository>(() =>
        _i13.UnitSettingsRepositoryImpl(
            gh<_i11.UnitSettingsLocalDataSource>()));
    gh.lazySingleton<_i14.WeatherForecastClient>(
        () => _i14.WeatherForecastClient(gh<_i3.Dio>()));
    gh.lazySingleton<_i15.LocationSuggestionApiDataSource>(() =>
        _i15.LocationSuggestionApiDataSource(
            gh<_i9.LocationSuggestionsClient>()));
    gh.lazySingleton<_i16.LocationSuggestionRepository>(() =>
        _i17.LocationSuggestionRepositoryImpl(
            gh<_i8.LocationSuggestionApiDataSource>()));
    gh.factory<_i18.SearchLocationBloc>(
        () => _i18.SearchLocationBloc(gh<_i16.LocationSuggestionRepository>()));
    gh.factory<_i19.UnitSettingsCubit>(
        () => _i19.UnitSettingsCubit(gh<_i12.UnitSettingsRepository>()));
    gh.lazySingleton<_i20.WeatherForecastApiDataSource>(() =>
        _i20.WeatherForecastApiDataSource(gh<_i14.WeatherForecastClient>()));
    gh.lazySingleton<_i21.WeatherForecastRepository>(() =>
        _i22.WeatherForecastRepositoryImpl(
            gh<_i8.WeatherForecastApiDataSource>()));
    gh.factory<_i23.FavoriteLocationCubit>(() => _i23.FavoriteLocationCubit(
          gh<_i24.WeatherForecastRepository>(),
          gh<_i24.FavoriteForecastRepository>(),
        ));
    gh.factory<_i25.LocationWeatherDetailCubit>(() =>
        _i25.LocationWeatherDetailCubit(gh<_i21.WeatherForecastRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i26.RegisterModule {}
