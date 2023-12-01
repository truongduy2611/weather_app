import 'package:flutter/material.dart';
import 'package:weather_app/core/core.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
    required this.onChanged,
    required this.controller,
  });
  final ValueChanged<String?> onChanged;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
      ),
      child: TextField(
        onChanged: onChanged,
        controller: controller,
        decoration: InputDecoration(
          fillColor: Theme.of(context).colorScheme.inversePrimary,
          filled: true,
          border: InputBorder.none,
          prefixIcon: const Icon(Icons.search),
          hintText: Translation.of(context).homePageSearchHintText,
        ),
      ),
    );
  }
}
