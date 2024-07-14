import 'package:flutter/material.dart';

class CalculatorAppDisplay extends StatelessWidget {
  final String value;

  const CalculatorAppDisplay({
    super.key,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(
          value,
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),
    );
  }
}
