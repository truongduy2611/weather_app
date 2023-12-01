import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:weather_app/domain/entity/entities.dart';

class FavoriteLocationTile extends StatelessWidget {
  const FavoriteLocationTile({
    super.key,
    required this.favorite,
    required this.onTap,
  });

  final WeatherForecast favorite;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Material(
      borderRadius: BorderRadius.circular(20),
      clipBehavior: Clip.antiAlias,
      color: theme.colorScheme.secondaryContainer,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          favorite.location.name,
                          style: theme.textTheme.titleLarge,
                        ),
                        Text(
                          favorite.location.country,
                          style: theme.textTheme.titleSmall,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "${favorite.current.tempC.round().toString()}°",
                    style: theme.textTheme.displayMedium,
                  ),
                ],
              ),
              const Gap(8),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Text(
                      favorite.current.condition.text,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  Image.network(
                    favorite.current.condition.iconUrl(64),
                    cacheHeight: 48,
                    cacheWidth: 48,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
