import 'package:injectable/injectable.dart';
import 'package:weather_app/data/datasource/datasource.dart';
import 'package:weather_app/data/model/models.dart';
import 'package:weather_app/domain/entity/weather_forecast.dart';
import 'package:weather_app/domain/repository/favorite_forecast_repository.dart';

@LazySingleton(as: FavoriteForecastRepository)
class FavoriteForecastRepositoryImpl implements FavoriteForecastRepository {
  const FavoriteForecastRepositoryImpl(this._dataSource);

  final FavoriteForecastLocalDataSource _dataSource;

  @override
  Future<List<WeatherForecast>> getFavoriteList() async {
    final favoriteList = await _dataSource.getFavoriteList();
    return favoriteList.map((e) => e.toEntity()).toList();
  }

  @override
  Future<void> persistData(WeatherForecast data) {
    return _dataSource
        .persistData(WeatherForecastModel.fromJson(data.toJson()));
  }

  @override
  Future<void> remove(WeatherForecast data) {
    return _dataSource.remove(data.location.url ?? data.location.name);
  }
}
