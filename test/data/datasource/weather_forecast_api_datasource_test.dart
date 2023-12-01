import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_app/data/datasource/datasource.dart';
import 'package:weather_app/data/datasource/network_clients/weather_forecast_client.dart';
import 'package:weather_app/data/model/models.dart';

import '../../fixtures_reader.dart';

class MockWeatherForecastClient extends Mock implements WeatherForecastClient {}

void main() {
  late WeatherForecastApiDataSource dataSource;
  late WeatherForecastClient client;
  const query = 'Ho Chi Minh City';

  final weatherForecastModel =
      WeatherForecastModel.fromJson('current.json'.toFixture());

  setUp(() async {
    registerFallbackValue(Uri());
    client = MockWeatherForecastClient();
    dataSource = WeatherForecastApiDataSource(client);
  });

  group('test weather forecast datasource', () {
    test(
      'should perform a GET request on /current.json',
      () async {
        // arrange
        when(
          () => client.getCurrentWeather(query),
        ).thenAnswer(
          (_) async => weatherForecastModel,
        );

        // act
        dataSource.getCurrentWeather(query);
        // assert
        verify(() => client.getCurrentWeather(query));
        verifyNoMoreInteractions(client);
      },
    );

    test(
      'should throw a DioException when the response code is 404 or other (unsuccess)',
      () async {
        // arrange
        when(() => client.getCurrentWeather(query)).thenThrow(
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
