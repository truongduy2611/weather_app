import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_app/data/datasource/datasource.dart';
import 'package:weather_app/data/model/models.dart';
import 'package:weather_app/data/repository/repositories.dart';
import 'package:weather_app/domain/repository/weather_forecast_repository.dart';

import '../../fixtures_reader.dart';

class MockWeatherForecastApiDataSource extends Mock
    implements WeatherForecastApiDataSource {}

void main() {
  late WeatherForecastApiDataSource dataSource;
  late WeatherForecastRepository repository;
  const query = 'Ho Chi Minh City';

  final weatherForecastModel =
      WeatherForecastModel.fromJson('current.json'.toFixture());

  setUp(() async {
    registerFallbackValue(Uri());
    dataSource = MockWeatherForecastApiDataSource();
    repository = WeatherForecastRepositoryImpl(dataSource);
  });

  group('Test weather forecast repository', () {
    test(
      'should return current weather forecast',
      () async {
        // arrange
        when(
          () => dataSource.getCurrentWeather(query),
        ).thenAnswer(
          (_) async => weatherForecastModel,
        );

        // act
        final currentWeather = await repository.getCurrentWeather(query);

        expect(currentWeather, weatherForecastModel.toEntity());
      },
    );

    test(
      'should throw a DioException when the response code is 404 or other (unsuccess)',
      () async {
        // arrange
        when(() => dataSource.getCurrentWeather(query)).thenThrow(
          DioException(
            response: Response(
              data: 'Something went wrong',
              statusCode: 404,
              requestOptions: RequestOptions(path: ''),
            ),
            requestOptions: RequestOptions(path: ''),
          ),
        );
        // act
        final call = repository.getCurrentWeather;
        // assert
        expect(
          () => call(query),
          throwsA(const TypeMatcher<DioException>()),
        );
      },
    );
  });
}
