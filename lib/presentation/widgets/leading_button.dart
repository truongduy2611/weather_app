import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class LeadingButton extends StatelessWidget {
  const LeadingButton({super.key});

  @override
  Widget build(BuildContext context) {
    if (AutoRouter.of(context).canPop()) {
      return IconButton(
        icon: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          AutoRouter.of(context).pop();
        },
      );
    }
    return const SizedBox();
  }
}
