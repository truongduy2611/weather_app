part of 'search_location_bloc.dart';

@freezed
class SearchLocationState with _$SearchLocationState {
  const factory SearchLocationState.initial() = _Initial;
  const factory SearchLocationState.loaded(List<WeatherLocation> locations) =
      _Loaded;
  const factory SearchLocationState.error(String message) = _Error;
}
