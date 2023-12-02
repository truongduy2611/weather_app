import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/core/core.dart';
import 'package:weather_app/domain/entity/entities.dart';

class HourForecastTile extends StatelessWidget {
  const HourForecastTile({
    super.key,
    required this.forecast,
    required this.location,
  });

  final HourWeatherForecast forecast;
  final WeatherLocation location;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final hour = DateTime.tryParse(forecast.time) ??
        forecast.timeEpoch.dateTimeFromSeconds;
    final nowInLocation =
        DateTime.tryParse(location.localTime ?? '') ?? DateTime.now();
    final isInThePast =
        hour.isBefore(nowInLocation) && !hour.isSameHour(nowInLocation);

    return AnimatedOpacity(
      opacity: isInThePast ? 0.5 : 1.0,
      duration: const Duration(milliseconds: 200),
      child: Container(
        width: 128,
        height: 128,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: theme.colorScheme.secondaryContainer,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Text(
              DateFormat.Hm().format(hour),
              style: theme.textTheme.titleLarge
                  ?.copyWith(fontWeight: FontWeight.w500),
            ),
            const Gap(4),
            Image.network(
              forecast.condition.iconUrl(64),
              height: 48,
            ),
            const Gap(4),
            Text(
              "${forecast.tempC.round().toString()}°",
              style: theme.textTheme.titleLarge
                  ?.copyWith(fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
    );
  }
}
