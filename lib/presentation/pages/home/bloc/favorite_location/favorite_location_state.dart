part of 'favorite_location_cubit.dart';

@freezed
sealed class FavoriteLocationState with _$FavoriteLocationState {
  const factory FavoriteLocationState.initial() = Initial;
  const factory FavoriteLocationState.loaded(
      List<WeatherForecast> favoriteList) = Loaded;
}
