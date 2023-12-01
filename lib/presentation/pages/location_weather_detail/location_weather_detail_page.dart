import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:weather_app/core/core.dart';
import 'package:weather_app/domain/entity/entities.dart';
import 'package:weather_app/presentation/pages/home/bloc/favorite_location/favorite_location_cubit.dart';
import 'package:weather_app/presentation/widgets/error_container.dart';
import 'package:weather_app/presentation/widgets/leading_button.dart';

import 'cubit/location_weather_detail_cubit.dart';

@RoutePage()
class LocationWeatherDetailPage extends StatefulWidget
    implements AutoRouteWrapper {
  const LocationWeatherDetailPage({
    super.key,
    @pathParam required this.location,
    @pathParam required this.locationName,
  });

  final String location;
  final String locationName;

  @override
  State<LocationWeatherDetailPage> createState() =>
      _LocationWeatherDetailPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LocationWeatherDetailCubit>(
          create: (_) => sl()
            ..location = location
            ..fetchLocationWeatherData(),
        )
      ],
      child: this,
    );
  }
}

class _LocationWeatherDetailPageState extends State<LocationWeatherDetailPage> {
  late final _theme = Theme.of(context);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const LeadingButton(),
        title: Text(widget.locationName),
        actions: [
          _buildFavoriteButton(),
        ],
      ),
      body: Center(
        child:
            BlocBuilder<LocationWeatherDetailCubit, LocationWeatherDetailState>(
          builder: (context, state) {
            return state.when(
              initial: () {
                return const CircularProgressIndicator.adaptive();
              },
              error: (message) {
                return ErrorContainer(errorMessage: message);
              },
              loaded: _buildForecast,
            );
          },
        ),
      ),
    );
  }

  Widget _buildFavoriteButton() {
    return BlocBuilder<LocationWeatherDetailCubit, LocationWeatherDetailState>(
      builder: (context, detailState) {
        return detailState.maybeWhen(
          loaded: (forecast) {
            return BlocBuilder<FavoriteLocationCubit, FavoriteLocationState>(
              builder: (context, state) {
                return state.when(
                  initial: () {
                    return const SizedBox();
                  },
                  loaded: (favoriteList) {
                    final hasFavorite = favoriteList.firstWhereOrNull(
                            (e) => e.location.url == widget.location) !=
                        null;

                    return IconButton(
                      onPressed: () {
                        context
                            .read<FavoriteLocationCubit>()
                            .favorite(forecast);
                      },
                      icon: Icon(
                        hasFavorite ? Icons.favorite : Icons.favorite_border,
                        color: hasFavorite ? Colors.pink : Colors.grey,
                      ),
                    );
                  },
                );
              },
            );
          },
          orElse: () {
            return const SizedBox();
          },
        );
      },
    );
  }

  Widget _buildForecast(WeatherForecast forecast) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              forecast.location.region.toUpperCase(),
              style: _theme.textTheme.bodySmall,
            ),
            const Gap(4),
            Image.network(
              forecast.current.condition.iconUrl(128),
              frameBuilder: (BuildContext context, Widget child, int? frame,
                  bool wasSynchronouslyLoaded) {
                if (wasSynchronouslyLoaded) {
                  return child;
                }
                return AnimatedOpacity(
                  opacity: frame == null ? 0 : 1,
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeOut,
                  child: child,
                );
              },
            ),
            Text(
              "${forecast.current.tempC.round().toString()}°",
              style: _theme.textTheme.displayLarge,
            ),
            const Gap(8),
            Text(
              forecast.current.condition.text,
              style: _theme.textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
