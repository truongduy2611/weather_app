part of 'location_weather_detail_cubit.dart';

@freezed
class LocationWeatherDetailState with _$LocationWeatherDetailState {
  const factory LocationWeatherDetailState.initial() = _Initial;
  const factory LocationWeatherDetailState.loaded(WeatherForecast forecast) =
      _Loaded;
  const factory LocationWeatherDetailState.error(String message) = _Error;
}
