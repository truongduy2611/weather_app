import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/core/core.dart';
import 'package:weather_app/domain/entity/entities.dart';
import 'package:weather_app/presentation/pages/home/bloc/favorite_location/favorite_location_cubit.dart';
import 'package:weather_app/presentation/pages/location_weather_detail/widgets/information_tile.dart';
import 'package:weather_app/presentation/widgets/error_container.dart';
import 'package:weather_app/presentation/widgets/leading_button.dart';

import 'cubit/location_weather_detail_cubit.dart';
import 'widgets/hour_forecast_tile.dart';

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
  late final _hourTileScrollController = ScrollController();

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
        child: BlocConsumer<LocationWeatherDetailCubit,
            LocationWeatherDetailState>(
          listener: _weatherDetailListener,
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
                        if (hasFavorite) {
                          context
                              .read<FavoriteLocationCubit>()
                              .unfavorite(forecast);
                        } else {
                          context
                              .read<FavoriteLocationCubit>()
                              .favorite(forecast);
                        }
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
    final forecastDay = forecast.forecast?.forecastday.isNotEmpty == true
        ? forecast.forecast?.forecastday
        : null;
    final hourForecastList = forecastDay != null
        ? [
            for (final day in forecastDay)
              for (final hour in day.hour) hour,
          ]
        : [];
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
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
                style: _theme.textTheme.displayLarge
                    ?.copyWith(fontWeight: FontWeight.w200),
              ),
              const Gap(8),
              Text(
                forecast.current.condition.text,
                style: _theme.textTheme.bodyLarge,
              ),
              const Gap(16),
              SizedBox(
                height: 128 + 32,
                child: ListView.separated(
                  controller: _hourTileScrollController,
                  separatorBuilder: (context, i) => const Gap(16),
                  padding: const EdgeInsets.all(16),
                  scrollDirection: Axis.horizontal,
                  itemCount: hourForecastList.length,
                  itemBuilder: (context, i) => HourForecastTile(
                    forecast: hourForecastList[i],
                    location: forecast.location,
                    key: GlobalObjectKey('hour_card_$i'),
                  ),
                ),
              ),
              const Gap(16),
              SizedBox(
                height: 128,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Expanded(
                        child: InformationTile(
                          icon: const Icon(Icons.device_thermostat_rounded),
                          title: Translation.of(context)
                              .locationWeatherDetailPageFeelsLike,
                          info:
                              "${forecast.current.feelsLikeC.round().toString()}°",
                        ),
                      ),
                      const Gap(16),
                      Expanded(
                        child: InformationTile(
                          icon: const Icon(Icons.wb_sunny_rounded),
                          title: Translation.of(context)
                              .locationWeatherDetailPageUVIndex,
                          info: forecast.current.uv.round().toString(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Gap(16),
              SizedBox(
                height: 128,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Expanded(
                        child: InformationTile(
                          icon: const Icon(Icons.opacity_rounded),
                          title: Translation.of(context)
                              .locationWeatherDetailPageHumidity,
                          info: "${forecast.current.humidity.toString()}%",
                        ),
                      ),
                      const Gap(16),
                      Expanded(
                        child: InformationTile(
                          icon: const Icon(Icons.water_drop_rounded),
                          title: Translation.of(context)
                              .locationWeatherDetailPagePrecipitation,
                          info: "${forecast.current.precipMm.toString()} mm",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Gap(24),
              Text(
                Translation.of(context).locationWeatherDetailPageLastUpdatedAt(
                  DateFormat.yMd().add_Hm().format(
                        forecast.current.lastUpdatedEpoch.dateTimeFromSeconds
                            .toLocal(),
                      ),
                ),
                style: _theme.textTheme.bodySmall,
              ),
              const Gap(24),
            ],
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _hourTileScrollController.dispose();
    super.dispose();
  }

  void _weatherDetailListener(
    BuildContext context,
    LocationWeatherDetailState state,
  ) {
    state.mapOrNull(loaded: (state) {
      final forecast = state.forecast;
      final forecastDay = forecast.forecast?.forecastday.isNotEmpty == true
          ? forecast.forecast?.forecastday.first
          : null;
      final hourForecastList = forecastDay?.hour ?? [];
      if (hourForecastList.isNotEmpty) {
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          final nowInLocation =
              DateTime.tryParse(forecast.location.localTime ?? '') ??
                  DateTime.now();
          final indexOfCurrentHourTile = hourForecastList.indexWhere(
              (e) => DateTime.tryParse(e.time)?.hour == nowInLocation.hour);
          if (_hourTileScrollController.hasClients &&
              indexOfCurrentHourTile >= 0) {
            _hourTileScrollController
                .jumpTo((indexOfCurrentHourTile + 1) * 128);
            WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
              final context =
                  GlobalObjectKey('hour_card_$indexOfCurrentHourTile')
                      .currentContext;
              if (context != null) {
                Scrollable.ensureVisible(
                  context,
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeIn,
                );
              }
            });
          }
        });
      }
    });
  }
}
