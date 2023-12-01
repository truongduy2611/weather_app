import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_app/data/datasource/datasource.dart';
import 'package:weather_app/data/datasource/network_clients/location_suggestions_client.dart';
import 'package:weather_app/data/model/models.dart';

import '../../fixtures_reader.dart';

class MockLocationSuggestionsClient extends Mock
    implements LocationSuggestionsClient {}

void main() {
  late LocationSuggestionApiDataSource dataSource;
  late LocationSuggestionsClient client;
  const query = 'London';
  late List<WeatherLocationModel> locations;
  final data = 'search.json'.toFixture()["data"] as List<dynamic>;
  locations = data.map((e) => WeatherLocationModel.fromJson(e)).toList();

  setUp(() async {
    registerFallbackValue(Uri());
    client = MockLocationSuggestionsClient();
    dataSource = LocationSuggestionApiDataSource(client);
  });

  group('test location suggestion datasource', () {
    test(
      'should perform a GET request on /search.json',
      () async {
        // arrange
        when(
          () => client.search(query),
        ).thenAnswer(
          (_) async => locations,
        );

        // act
        dataSource.search(query);
        // assert
        verify(() => client.search(query));
        verifyNoMoreInteractions(client);
      },
    );

    test(
      'should throw a DioException when the response code is 404 or other (unsuccess)',
      () async {
        // arrange
        when(() => client.search(query)).thenThrow(
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
        final call = dataSource.search;
        // assert
        expect(
          () => call(query),
          throwsA(const TypeMatcher<DioException>()),
        );
      },
    );
  });
}
