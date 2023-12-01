import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/domain/entity/entities.dart';

class HourForecastTile extends StatelessWidget {
  const HourForecastTile({super.key, required this.forecast});

  final HourWeatherForecast forecast;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
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
            DateFormat.Hm().format(
              DateTime.fromMillisecondsSinceEpoch(forecast.timeEpoch * 1000)
                  .toLocal(),
            ),
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
    );
  }
}
