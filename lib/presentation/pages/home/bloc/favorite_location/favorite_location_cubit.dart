import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/domain/entity/entities.dart';
import 'package:weather_app/domain/repository/repositories.dart';

part 'favorite_location_cubit.freezed.dart';
part 'favorite_location_state.dart';

@injectable
class FavoriteLocationCubit extends Cubit<FavoriteLocationState>
    with WidgetsBindingObserver {
  FavoriteLocationCubit(this.repository, this.favoriteRepository)
      : super(const FavoriteLocationState.initial()) {
    WidgetsBinding.instance.addObserver(this);
  }

  final WeatherForecastRepository repository;
  final FavoriteForecastRepository favoriteRepository;
  DateTime _lastUpdated = DateTime.now();

  Future<void> loadSavedLocationList() async {
    final favoriteList = await favoriteRepository.getFavoriteList();
    emit(FavoriteLocationState.loaded(favoriteList));
  }

  Future<void> refreshSavedLocationList() async {
    final favoriteList = await favoriteRepository.getFavoriteList();
    for (final forecast in favoriteList) {
      try {
        final url = forecast.location.url ?? forecast.location.name;
        final result = await repository.getCurrentWeather(url);
        await favoriteRepository
            .persistData(forecast.copyWith(current: result.current));
      } catch (_) {}
    }
    _lastUpdated = DateTime.now();
    await loadSavedLocationList();
  }

  Future<void> favorite(WeatherForecast forecast) async {
    await favoriteRepository.persistData(forecast);
    await loadSavedLocationList();
  }

  Future<void> unfavorite(WeatherForecast forecast) async {
    await favoriteRepository.remove(forecast);
    await loadSavedLocationList();
  }

  @override
  Future<void> close() {
    WidgetsBinding.instance.removeObserver(this);
    return super.close();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      if (_lastUpdated
          .isBefore(DateTime.now().subtract(const Duration(hours: 1)))) {
        refreshSavedLocationList();
      }
    }
    super.didChangeAppLifecycleState(state);
  }
}
