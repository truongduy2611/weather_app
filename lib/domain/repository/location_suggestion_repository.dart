import 'package:weather_app/domain/entity/entities.dart';

abstract class LocationSuggestionRepository {
  Future<List<WeatherLocation>> searchLocation(String query);
}
