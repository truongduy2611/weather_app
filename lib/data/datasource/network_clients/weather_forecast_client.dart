import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:weather_app/data/model/models.dart';

part 'weather_forecast_client.g.dart';

@RestApi(
  parser: Parser.FlutterCompute,
)
@lazySingleton
abstract class WeatherForecastClient {
  @factoryMethod
  factory WeatherForecastClient(Dio dio) = _WeatherForecastClient;

  @GET('/current.json')
  Future<WeatherForecastModel> getCurrentWeather(@Query('q') String query);

  @GET('/forecast.json')
  Future<WeatherForecastModel> getWeatherForecast(
      @Query('q') String query, @Query('days') int numberOfDay);
}

WeatherForecastModel deserializeWeatherForecastModel(
        Map<String, dynamic> json) =>
    WeatherForecastModel.fromJson(json);
