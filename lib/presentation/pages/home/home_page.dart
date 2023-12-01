import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/core/core.dart';

import 'widgets/search_widget.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final _translation = Translation.of(context);
  late final _theme = Theme.of(context);
  final _searchTextController = TextEditingController();

  void _onSearchChanged(String? query) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_translation.homePageWeatherTitle),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SearchWidget(
              onChanged: _onSearchChanged,
              controller: _searchTextController,
            ),
          ),
          // ValueListenableBuilder(
          //   valueListenable: _searchTextController,
          //   builder: (context, value, widget) {
          //     return
          //   },
          // )
        ],
      ),
    );
  }

  @override
  void dispose() {
    _searchTextController.dispose();
    super.dispose();
  }
}
