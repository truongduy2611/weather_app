// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:weather_app/presentation/pages/home/home_page.dart' as _i1;
import 'package:weather_app/presentation/pages/location_weather_detail/location_weather_detail_page.dart'
    as _i2;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.WrappedRoute(child: const _i1.HomePage()),
      );
    },
    LocationWeatherDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<LocationWeatherDetailRouteArgs>(
          orElse: () => LocationWeatherDetailRouteArgs(
                location: pathParams.getString('location'),
                locationName: pathParams.getString('locationName'),
              ));
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.WrappedRoute(
            child: _i2.LocationWeatherDetailPage(
          key: args.key,
          location: args.location,
          locationName: args.locationName,
        )),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i3.PageRouteInfo<void> {
  const HomeRoute({List<_i3.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.LocationWeatherDetailPage]
class LocationWeatherDetailRoute
    extends _i3.PageRouteInfo<LocationWeatherDetailRouteArgs> {
  LocationWeatherDetailRoute({
    _i4.Key? key,
    required String location,
    required String locationName,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          LocationWeatherDetailRoute.name,
          args: LocationWeatherDetailRouteArgs(
            key: key,
            location: location,
            locationName: locationName,
          ),
          rawPathParams: {
            'location': location,
            'locationName': locationName,
          },
          initialChildren: children,
        );

  static const String name = 'LocationWeatherDetailRoute';

  static const _i3.PageInfo<LocationWeatherDetailRouteArgs> page =
      _i3.PageInfo<LocationWeatherDetailRouteArgs>(name);
}

class LocationWeatherDetailRouteArgs {
  const LocationWeatherDetailRouteArgs({
    this.key,
    required this.location,
    required this.locationName,
  });

  final _i4.Key? key;

  final String location;

  final String locationName;

  @override
  String toString() {
    return 'LocationWeatherDetailRouteArgs{key: $key, location: $location, locationName: $locationName}';
  }
}
