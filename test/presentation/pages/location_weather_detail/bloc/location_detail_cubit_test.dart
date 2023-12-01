import 'package:bloc_test/bloc_test.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_app/data/model/models.dart';
import 'package:weather_app/domain/repository/weather_forecast_repository.dart';
import 'package:weather_app/presentation/pages/location_weather_detail/cubit/location_weather_detail_cubit.dart';

import '../../../../fixtures_reader.dart';

class MockWeatherForecastRepository extends Mock
    implements WeatherForecastRepository {}

void main() {
  late WeatherForecastRepository repository;
  const query = 'London';
  final fixture = 'current.json'.toFixture();
  final entity = WeatherForecastModel.fromJson(fixture).toEntity();
  const errorMessage = 'Unexpected error!';

  setUpAll(() {
    repository = MockWeatherForecastRepository();
  });

  group('test LocationWeatherDetailCubit', () {
    blocTest<LocationWeatherDetailCubit, LocationWeatherDetailState>(
      'sends [LocationWeatherDetailState.loaded()] when calling fetchLocationWeatherData]',
      build: () {
        return LocationWeatherDetailCubit(repository)..location = query;
      },
      setUp: () {
        when(() => repository.getCurrentWeather(query)).thenAnswer(
          (_) async => entity,
        );
      },
      act: (bloc) {
        bloc.fetchLocationWeatherData();
      },
      wait: const Duration(milliseconds: 500),
      expect: () => <LocationWeatherDetailState>[
        LocationWeatherDetailState.loaded(entity),
      ],
    );

    blocTest<LocationWeatherDetailCubit, LocationWeatherDetailState>(
      'sends [LocationWeatherDetailState.error(errorMessage)] when calling fetchLocationWeatherData]',
      build: () {
        return LocationWeatherDetailCubit(repository)..location = query;
      },
      setUp: () {
        when(() => repository.getCurrentWeather(query)).thenThrow(
          DioException(
            response: Response(
              data: errorMessage,
              statusCode: 404,
              requestOptions: RequestOptions(path: ''),
            ),
            requestOptions: RequestOptions(path: ''),
          ),
        );
      },
      act: (bloc) {
        bloc.fetchLocationWeatherData();
      },
      expect: () => <LocationWeatherDetailState>[
        const LocationWeatherDetailState.error(errorMessage),
      ],
    );
  });
}
