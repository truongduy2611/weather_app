part of 'search_location_bloc.dart';

@freezed
sealed class SearchLocationEvent with _$SearchLocationEvent {
  const factory SearchLocationEvent.search(String query) = _SearchLocation;
  const factory SearchLocationEvent.reset() = _ResetSearch;
}
