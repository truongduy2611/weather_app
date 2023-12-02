import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/presentation/pages/home/bloc/unit_settings/unit_settings_cubit.dart';

class TempUnitBuilder extends StatelessWidget {
  const TempUnitBuilder({
    super.key,
    required this.inC,
    required this.inF,
    required this.builder,
  });

  final double inC;
  final double inF;
  final Function(BuildContext, String) builder;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UnitSettingsCubit, UnitSettingsState>(
      builder: (context, state) {
        final isCelsius = state.map(
          initial: (_) => true,
          loaded: (settings) => settings.settings.useCelsius,
        );

        return builder(
          context,
          isCelsius ? '${inC.round()}°' : '${inF.round()}°',
        );
      },
    );
  }
}
