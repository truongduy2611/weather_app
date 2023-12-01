import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:weather_app/data/model/models.dart';

part 'current_weather_forecast_client.g.dart';

@RestApi()
@lazySingleton
abstract class CurrentWeatherForecastClient {
  @factoryMethod
  factory CurrentWeatherForecastClient(Dio dio) = _CurrentWeatherForecastClient;

  @GET('/current.json')
  Future<WeatherForecastModel> getCurrentWeather(@Query('q') String query);
}
