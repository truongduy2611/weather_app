part of 'search_location_bloc.dart';

@freezed
class SearchLocationEvent with _$SearchLocationEvent {
  const factory SearchLocationEvent.search(String query) = _Search;
}
