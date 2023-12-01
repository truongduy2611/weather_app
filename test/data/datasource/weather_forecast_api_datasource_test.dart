import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_app/data/datasource/datasource.dart';
import 'package:weather_app/data/datasource/network_clients/current_weather_forecast_client.dart';
import 'package:weather_app/data/model/models.dart';

import '../../fixtures_reader.dart';

class MockCurrentWeatherForecastClient extends Mock
    implements CurrentWeatherForecastClient {}

void main() {
  late WeatherForecastApiDataSource dataSource;
  late CurrentWeatherForecastClient currentWeatherForecastClient;
  const query = 'Ho Chi Minh City';

  final weatherForecastModel =
      WeatherForecastModel.fromJson('current.json'.toFixture());

  setUp(() async {
    registerFallbackValue(Uri());
    currentWeatherForecastClient = MockCurrentWeatherForecastClient();
    dataSource = WeatherForecastApiDataSource(currentWeatherForecastClient);
  });

  group('test weather forecast datasource', () {
    test(
      'should perform a GET request on /current.json',
      () async {
        // arrange
        when(
          () => currentWeatherForecastClient.getCurrentWeather(query),
        ).thenAnswer(
          (_) async => weatherForecastModel,
        );

        // act
        dataSource.getCurrentWeather(query);
        // assert
        verify(() => currentWeatherForecastClient.getCurrentWeather(query));
        verifyNoMoreInteractions(currentWeatherForecastClient);
      },
    );

    test(
      'should throw a DioException when the response code is 404 or other (unsuccess)',
      () async {
        // arrange
        when(() => currentWeatherForecastClient.getCurrentWeather(query))
            .thenThrow(
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
        final call = dataSource.getCurrentWeather;
        // assert
        expect(
          () => call(query),
          throwsA(const TypeMatcher<DioException>()),
        );
      },
    );
  });
}
