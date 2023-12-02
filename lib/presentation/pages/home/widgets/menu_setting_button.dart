import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/domain/entity/entities.dart';
import 'package:weather_app/presentation/pages/home/bloc/unit_settings/unit_settings_cubit.dart';

class MenuSettingButton extends StatelessWidget {
  const MenuSettingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UnitSettingsCubit, UnitSettingsState>(
      builder: (context, state) {
        final unitSettings = state.map(
          initial: (_) => const UnitSettings(useCelsius: true, useMetric: true),
          loaded: (settings) => settings.settings,
        );
        final isCelsius = unitSettings.useCelsius;
        return MenuAnchor(
          builder: (context, controller, child) {
            return IconButton(
              onPressed: () {
                if (controller.isOpen) {
                  controller.close();
                } else {
                  controller.open();
                }
              },
              icon: const Icon(Icons.more_horiz_rounded),
              tooltip: 'Show menu',
            );
          },
          style: const MenuStyle(
            padding: MaterialStatePropertyAll(EdgeInsets.zero),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
          ),
          menuChildren: [
            MenuItemButton(
              onPressed: () {
                context.read<UnitSettingsCubit>().updateUnitSettings(
                    unitSettings.copyWith(useCelsius: true));
              },
              leadingIcon: Padding(
                padding: const EdgeInsets.all(16).copyWith(right: 0),
                child: isCelsius
                    ? const Icon(Icons.check)
                    : const SizedBox(width: 24),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16).copyWith(left: 0),
                child: const Text('Celsius °C'),
              ),
            ),
            const Divider(height: 1),
            MenuItemButton(
              onPressed: () {
                context.read<UnitSettingsCubit>().updateUnitSettings(
                    unitSettings.copyWith(useCelsius: false));
              },
              leadingIcon: Padding(
                padding: const EdgeInsets.all(16).copyWith(right: 0),
                child: !isCelsius
                    ? const Icon(Icons.check)
                    : const SizedBox(width: 24),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16).copyWith(left: 0),
                child: const Text('Fahrenheit °F'),
              ),
            ),
          ],
        );
      },
    );
  }
}
