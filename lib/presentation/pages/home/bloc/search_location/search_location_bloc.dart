import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:weather_app/core/api_error/api_error.dart';
import 'package:weather_app/domain/entity/weather_location.dart';
import 'package:weather_app/domain/repository/location_suggestion_repository.dart';

part 'search_location_bloc.freezed.dart';
part 'search_location_event.dart';
part 'search_location_state.dart';

@injectable
class SearchLocationBloc
    extends Bloc<SearchLocationEvent, SearchLocationState> {
  SearchLocationBloc(this._repository) : super(const _Initial()) {
    on<SearchLocationEvent>(
      _onSearchEvent,
      transformer: (events, mapper) => events
          .debounceTime(const Duration(milliseconds: 300))
          .switchMap(mapper),
    );
  }

  final LocationSuggestionRepository _repository;

  FutureOr<void> _onSearchEvent(
    SearchLocationEvent event,
    Emitter<SearchLocationState> emit,
  ) async {
    try {
      final locations = await _repository.searchLocation(event.query);
      emit(SearchLocationState.loaded(locations));
    } catch (e) {
      emit(SearchLocationState.error(e.apiError.toString()));
    }
  }
}
