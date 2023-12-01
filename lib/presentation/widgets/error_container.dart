import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ErrorContainer extends StatelessWidget {
  const ErrorContainer({super.key, required this.errorMessage});
  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.error_rounded,
          size: 64,
          color: Colors.redAccent,
        ),
        const Gap(8),
        Text(errorMessage),
      ],
    );
  }
}
