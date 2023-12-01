import 'package:flutter/material.dart';

class InformationTile extends StatelessWidget {
  const InformationTile({
    Key? key,
    required this.title,
    required this.icon,
    required this.info,
  }) : super(key: key);

  final String title;
  final Widget icon;
  final String info;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      height: 128,
      width: 128,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.colorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(child: Text(title.toUpperCase())),
              icon,
            ],
          ),
          const Spacer(),
          Text(
            info,
            style: theme.textTheme.displaySmall
                ?.copyWith(fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
