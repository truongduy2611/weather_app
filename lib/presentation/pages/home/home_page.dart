import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:weather_app/core/core.dart';
import 'package:weather_app/domain/entity/entities.dart';
import 'package:weather_app/presentation/pages/home/bloc/favorite_location/favorite_location_cubit.dart';
import 'package:weather_app/presentation/routing/router.gr.dart';
import 'package:weather_app/presentation/widgets/error_container.dart';

import 'bloc/search_location/search_location_bloc.dart';
import 'widgets/favorite_location_tile.dart';
import 'widgets/menu_setting_button.dart';
import 'widgets/search_widget.dart';

@RoutePage()
class HomePage extends StatefulWidget implements AutoRouteWrapper {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();

  @override
  Widget wrappedRoute(Object context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SearchLocationBloc>(create: (_) => sl()),
      ],
      child: this,
    );
  }
}

class _HomePageState extends State<HomePage> {
  late final _translation = Translation.of(context);
  late final _searchTextController = TextEditingController();

  void _onSearchChanged(String? query) {
    if (query?.trim().isNotEmpty == true) {
      context
          .read<SearchLocationBloc>()
          .add(SearchLocationEvent.search(query!));
    } else {
      context.read<SearchLocationBloc>().add(const SearchLocationEvent.reset());
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(_translation.homePageWeatherTitle),
          centerTitle: true,
          actions: const [
            MenuSettingButton(),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(48),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
              child: SearchWidget(
                onChanged: _onSearchChanged,
                controller: _searchTextController,
              ),
            ),
          ),
        ),
        body: Stack(
          children: [
            _buildFavoriteList(),
            Positioned.fill(child: _buildSearchSuggestions()),
          ],
        ),
      ),
    );
  }

  void _onTapLocation(WeatherLocation location) {
    _searchTextController.clear();
    WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();

    AutoRouter.of(context).push(
      LocationWeatherDetailRoute(
        location: location.url ?? location.name,
        locationName: location.name,
      ),
    );
  }

  Widget _buildSearchSuggestions() {
    return ValueListenableBuilder(
      valueListenable: _searchTextController,
      builder: (context, value, widget) {
        if (value.text.isNotEmpty) {
          return Material(
            child: BlocBuilder<SearchLocationBloc, SearchLocationState>(
              builder: (context, state) {
                return state.when(
                  initial: () {
                    return const SizedBox();
                  },
                  error: (message) {
                    return ErrorContainer(errorMessage: message);
                  },
                  loaded: (locations) {
                    if (locations.isEmpty) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.search_rounded,
                            color: Theme.of(context).colorScheme.inversePrimary,
                            size: 64,
                          ),
                          const Gap(8),
                          Text(
                            _translation.homePageNoResultFound(
                                _searchTextController.text),
                          ),
                        ],
                      );
                    }
                    return ListView.builder(
                      padding: const EdgeInsets.only(top: 16),
                      itemBuilder: (context, i) {
                        final location = locations[i];
                        return ListTile(
                          title: Text(location.name),
                          subtitle: Text(location.country),
                          onTap: () {
                            _onTapLocation(location);
                          },
                        );
                      },
                      itemCount: locations.length,
                    );
                  },
                );
              },
            ),
          );
        }
        return const SizedBox();
      },
    );
  }

  // Widget get

  Widget _buildFavoriteList() {
    return BlocBuilder<FavoriteLocationCubit, FavoriteLocationState>(
      builder: (context, state) {
        final favoriteList = state.when(
          initial: () => [],
          loaded: (list) => list,
        );

        return RefreshIndicator(
          onRefresh:
              context.read<FavoriteLocationCubit>().refreshSavedLocationList,
          child: ListView.separated(
            padding: const EdgeInsets.all(16),
            separatorBuilder: (context, i) => const Gap(16),
            itemBuilder: (context, i) {
              final favorite = favoriteList[i];

              return Dismissible(
                key: ValueKey(favorite),
                background: Container(
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.all(16),
                  child: const Icon(
                    Icons.heart_broken_rounded,
                  ),
                ),
                direction: DismissDirection.endToStart,
                onDismissed: (_) {
                  context.read<FavoriteLocationCubit>().unfavorite(favorite);
                },
                child: FavoriteLocationTile(
                  favorite: favorite,
                  onTap: () {
                    _onTapLocation(favorite.location);
                  },
                ),
              );
            },
            itemCount: favoriteList.length,
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _searchTextController.dispose();
    super.dispose();
  }
}
