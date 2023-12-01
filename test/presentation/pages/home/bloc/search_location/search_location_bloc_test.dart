import 'package:bloc_test/bloc_test.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_app/data/model/models.dart';
import 'package:weather_app/domain/repository/location_suggestion_repository.dart';
import 'package:weather_app/presentation/pages/home/bloc/search_location/search_location_bloc.dart';

import '../../../../../fixtures_reader.dart';

class MockLocationSuggestionRepository extends Mock
    implements LocationSuggestionRepository {}

void main() {
  late LocationSuggestionRepository repository;
  const query = 'London';
  final data = 'search.json'.toFixture()["data"] as List<dynamic>;
  final locations =
      data.map((e) => WeatherLocationModel.fromJson(e).toEntity()).toList();
  const errorMessage = 'Unexpected error!';
  setUpAll(() {
    repository = MockLocationSuggestionRepository();
  });

  group('test SearchLocationBloc', () {
    blocTest<SearchLocationBloc, SearchLocationState>(
      'sends [SearchLocationState.loaded()] event and emits [SearchLocationEvent.search(query)]',
      build: () {
        return SearchLocationBloc(repository);
      },
      setUp: () {
        when(() => repository.searchLocation(query)).thenAnswer(
          (_) async => locations,
        );
      },
      act: (bloc) {
        bloc.add(const SearchLocationEvent.search(query));
      },
      wait: const Duration(milliseconds: 500),
      expect: () => <SearchLocationState>[
        SearchLocationState.loaded(locations),
      ],
    );

    blocTest<SearchLocationBloc, SearchLocationState>(
      'sends [SearchLocationState.error(errorMessage)] event and emits [SearchLocationEvent.search(query)]',
      build: () {
        return SearchLocationBloc(repository);
      },
      setUp: () {
        when(() => repository.searchLocation(query)).thenThrow(
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
        bloc.add(const SearchLocationEvent.search(query));
      },
      wait: const Duration(milliseconds: 500),
      expect: () => <SearchLocationState>[
        const SearchLocationState.error(errorMessage),
      ],
    );
  });
}
