import 'package:auto_route/auto_route.dart';

import 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [_homeRoute, locationDetailRoute];

  final _homeRoute = AdaptiveRoute(
    path: '/',
    page: HomeRoute.page,
  );

  final locationDetailRoute = AdaptiveRoute(
    path: '/detail/:url',
    page: LocationWeatherDetailRoute.page,
  );
}
