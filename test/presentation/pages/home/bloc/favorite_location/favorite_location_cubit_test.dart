import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_app/data/model/models.dart';
import 'package:weather_app/domain/repository/repositories.dart';
import 'package:weather_app/presentation/pages/home/bloc/favorite_location/favorite_location_cubit.dart';

import '../../../../../fixtures_reader.dart';

class MockWeatherForecastRepository extends Mock
    implements WeatherForecastRepository {}

class MockFavoriteForecastRepository extends Mock
    implements FavoriteForecastRepository {}

void main() {
  late WeatherForecastRepository repository;
  late FavoriteForecastRepository favoriteRepository;

  final fixture = 'current.json'.toFixture();
  var entity = WeatherForecastModel.fromJson(fixture).toEntity();
  const url = 'london';
  entity = entity.copyWith(location: entity.location.copyWith(url: url));
  WidgetsFlutterBinding.ensureInitialized();

  setUpAll(() {
    repository = MockWeatherForecastRepository();
    favoriteRepository = MockFavoriteForecastRepository();
  });

  group('test FavoriteLocationCubit', () {
    blocTest<FavoriteLocationCubit, FavoriteLocationState>(
      'sends [FavoriteLocationState.loaded()] when calling loadSavedLocationList]',
      build: () {
        return FavoriteLocationCubit(repository, favoriteRepository);
      },
      setUp: () {
        when(() => favoriteRepository.getFavoriteList()).thenAnswer(
          (_) async => [entity],
        );
      },
      act: (bloc) {
        bloc.loadSavedLocationList();
      },
      expect: () => <FavoriteLocationState>[
        FavoriteLocationState.loaded([entity]),
      ],
    );

    blocTest<FavoriteLocationCubit, FavoriteLocationState>(
      'sends [FavoriteLocationState.loaded()] when calling favorite]',
      build: () {
        return FavoriteLocationCubit(repository, favoriteRepository);
      },
      seed: () => const FavoriteLocationState.initial(),
      setUp: () {
        when(() => favoriteRepository.getFavoriteList()).thenAnswer(
          (_) async => [entity],
        );

        when(() => favoriteRepository.persistData(entity)).thenAnswer(
          (_) async => Future.value(),
        );
      },
      act: (bloc) {
        bloc.favorite(entity);
      },
      expect: () => <FavoriteLocationState>[
        FavoriteLocationState.loaded([entity]),
      ],
    );

    blocTest<FavoriteLocationCubit, FavoriteLocationState>(
      'sends [FavoriteLocationState.loaded()] when calling unfavorite]',
      build: () {
        return FavoriteLocationCubit(repository, favoriteRepository);
      },
      seed: () => FavoriteLocationState.loaded([entity]),
      setUp: () {
        when(() => favoriteRepository.getFavoriteList()).thenAnswer(
          (_) async => [],
        );

        when(() => favoriteRepository.remove(entity)).thenAnswer(
          (_) async => Future.value(),
        );
      },
      act: (bloc) {
        bloc.unfavorite(entity);
      },
      expect: () => <FavoriteLocationState>[
        const FavoriteLocationState.loaded([]),
      ],
    );
  });
}
