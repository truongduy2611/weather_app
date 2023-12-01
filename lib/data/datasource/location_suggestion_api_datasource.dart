import 'package:injectable/injectable.dart';
import 'package:weather_app/data/model/models.dart';

import 'network_clients/location_suggestions_client.dart';

@lazySingleton
class LocationSuggestionApiDataSource {
  final LocationSuggestionsClient _client;

  LocationSuggestionApiDataSource(this._client);

  Future<List<WeatherLocationModel>> search(String query) {
    return _client.search(query);
  }
}
