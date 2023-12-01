import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/core.dart';

import 'bloc/search_location/search_location_bloc.dart';
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
  final _searchTextController = TextEditingController();

  void _onSearchChanged(String? query) {
    if (query != null) {
      context.read<SearchLocationBloc>().add(SearchLocationEvent.search(query));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_translation.homePageWeatherTitle),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
            child: SearchWidget(
              onChanged: _onSearchChanged,
              controller: _searchTextController,
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                _buildSearchSuggestions(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildSearchSuggestions() {
    return ValueListenableBuilder(
      valueListenable: _searchTextController,
      builder: (context, value, widget) {
        if (value.text.isNotEmpty) {
          return BlocBuilder<SearchLocationBloc, SearchLocationState>(
            builder: (context, state) {
              return state.when(
                initial: () {
                  return const SizedBox();
                },
                error: (message) {
                  return const SizedBox();
                },
                loaded: (locations) {
                  return ListView.builder(
                    padding: const EdgeInsets.only(top: 16),
                    itemBuilder: (context, i) {
                      final location = locations[i];
                      return ListTile(
                        title: Text(location.name),
                        subtitle: Text(location.country),
                        onTap: () {},
                      );
                    },
                    itemCount: locations.length,
                  );
                },
              );
            },
          );
        }
        return const SizedBox();
      },
    );
  }

  @override
  void dispose() {
    _searchTextController.dispose();
    super.dispose();
  }
}
