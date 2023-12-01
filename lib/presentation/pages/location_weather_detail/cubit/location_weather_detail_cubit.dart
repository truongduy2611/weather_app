import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/core/api_error/api_error.dart';
import 'package:weather_app/domain/entity/entities.dart';
import 'package:weather_app/domain/repository/weather_forecast_repository.dart';

part 'location_weather_detail_cubit.freezed.dart';
part 'location_weather_detail_state.dart';

@injectable
class LocationWeatherDetailCubit extends Cubit<LocationWeatherDetailState> {
  LocationWeatherDetailCubit(this.repository)
      : super(const LocationWeatherDetailState.initial());

  late String location;
  final WeatherForecastRepository repository;

  Future<void> fetchLocationWeatherData() async {
    try {
      final forecast = await repository.getWeatherForecast(location, 1);
      emit(
        LocationWeatherDetailState.loaded(
          forecast.copyWith(
            location: forecast.location.copyWith(url: location),
          ),
        ),
      );
    } catch (e) {
      emit(LocationWeatherDetailState.error(e.apiError.toString()));
    }
  }
}
