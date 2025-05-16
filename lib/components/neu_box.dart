import 'package:flutter/material.dart';

class NeuBox extends StatelessWidget {
  final Widget? child;
  const NeuBox({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final brightness = Theme.of(context).brightness;

    Color shadowDark;
    Color shadowLight;

    if (brightness == Brightness.dark) {
      // Use subtle dark shadows on a dark background
      shadowDark = Colors.black.withOpacity(0.8);
      shadowLight = Colors.grey.shade800.withOpacity(0.6);
    } else {
      // Original shadows for light mode
      shadowDark = Colors.grey.shade500;
      shadowLight = Colors.white;
    }

    return Container(
      decoration: BoxDecoration(
        color: colorScheme.background,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: shadowDark,
            blurRadius: 15,
            offset: const Offset(4, 4),
          ),
          BoxShadow(
            color: shadowLight,
            blurRadius: 15,
            offset: const Offset(-4, -4),
          ),
        ],
      ),
      padding: const EdgeInsets.all(12),
      child: child,
    );
  }
}
