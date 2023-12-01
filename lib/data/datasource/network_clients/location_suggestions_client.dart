import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:weather_app/data/model/models.dart';

part 'location_suggestions_client.g.dart';

@RestApi()
@lazySingleton
abstract class LocationSuggestionsClient {
  @factoryMethod
  factory LocationSuggestionsClient(Dio dio) = _LocationSuggestionsClient;

  @GET('/search.json')
  Future<List<WeatherLocationModel>> search(@Query('q') String query);
}
