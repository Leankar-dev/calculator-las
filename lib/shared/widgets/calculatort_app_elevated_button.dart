import 'package:flutter/material.dart';

typedef OnTapCalcButtom = void Function();

class CalculatortAppElevatedButton extends StatelessWidget {
  final double? number;
  final OnTapCalcButtom onTap;
  final String text;

  const CalculatortAppElevatedButton({
    super.key,
    this.number,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      backgroundColor: Colors.blueGrey[100],
      textStyle: const TextStyle(fontSize: 25, color: Colors.blue, fontWeight: FontWeight.bold),
      // shadowColor: Colors.cyan[200],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
        side: const BorderSide(color: Colors.blueGrey),
      ),
    );
    return ElevatedButton(
      style: style,
      onPressed: onTap,
      child: Text(text),
    );
  }
}
