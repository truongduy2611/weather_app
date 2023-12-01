import 'package:injectable/injectable.dart';
import 'package:weather_app/data/datasource/datasource.dart';
import 'package:weather_app/data/datasource/location_suggestion_api_datasource.dart';
import 'package:weather_app/domain/entity/weather_location.dart';
import 'package:weather_app/domain/repository/location_suggestion_repository.dart';

@LazySingleton(as: LocationSuggestionRepository)
class LocationSuggestionRepositoryImpl implements LocationSuggestionRepository {
  const LocationSuggestionRepositoryImpl(this._dataSource);

  final LocationSuggestionApiDataSource _dataSource;

  @override
  Future<List<WeatherLocation>> searchLocation(String query) async {
    final locationList = await _dataSource.search(query);
    return locationList.map((e) => e.toEntity()).toList();
  }
}
