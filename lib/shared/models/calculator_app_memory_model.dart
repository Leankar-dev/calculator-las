import 'package:calculator_las/shared/widgets/calculator_app_display.dart';
import 'package:calculator_las/shared/widgets/calculatort_app_elevated_button.dart';
import 'package:flutter/material.dart';

class CalculatorAppMemoryModel extends StatefulWidget {
  const CalculatorAppMemoryModel({super.key});

  @override
  State<CalculatorAppMemoryModel> createState() =>
      _CalculatorAppMemoryModelState();
}

class _CalculatorAppMemoryModelState extends State<CalculatorAppMemoryModel> {
  String display = '';
  double firstNumber = 0.0;
  String operation = '';

  void _onPressed(String button) {
    switch (button) {
      case '0':
      case '1':
      case '2':
      case '3':
      case '4':
      case '5':
      case '6':
      case '7':
      case '8':
      case '9':
      case ',':
        setState(() {
          display += button;
          display = display.replaceAll(',', '.');
          if (display.contains('.')) {
            // double displayDouble = double.parse(display);
            // display = displayDouble.toString();
          } else {
            int displayInt = int.parse(display);
            display = displayInt.toString();
          }
          display = display.replaceAll('.', ',');
        });
        break;

      case '+':
        operation = button;
        firstNumber = double.parse(display);
        display = '0';
        break;

      case '=':
        double result = 0.0;
        if (operation == button) {
          result = firstNumber + double.parse(display);
        }
        setState(() {
          display = result.toString();
          display = display.replaceAll('.', ',');
        });
        break;

      case 'AC':
        setState(() {
          display = '0';
        });
        break;

      default:
        display += button;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CalculatorAppDisplay(value: display),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CalculatortAppElevatedButton(
                  onTap: () => _onPressed, text: 'HISTORICO'),
              CalculatortAppElevatedButton(
                  onTap: () => _onPressed(' '), text: 'DEL'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CalculatortAppElevatedButton(
                  onTap: () => _onPressed('AC'), text: 'AC'),
              CalculatortAppElevatedButton(
                  onTap: () => _onPressed(' '), text: '( )'),
              CalculatortAppElevatedButton(
                  onTap: () => _onPressed(' '), text: '%'),
              CalculatortAppElevatedButton(
                  onTap: () => _onPressed(' '), text: '/'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CalculatortAppElevatedButton(
                  onTap: () => _onPressed('7'), text: '7'),
              CalculatortAppElevatedButton(
                  onTap: () => _onPressed('8'), text: '8'),
              CalculatortAppElevatedButton(
                  onTap: () => _onPressed('9'), text: '9'),
              CalculatortAppElevatedButton(
                  onTap: () => _onPressed(' '), text: 'X'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CalculatortAppElevatedButton(
                  onTap: () => _onPressed('4'), text: '4'),
              CalculatortAppElevatedButton(
                  onTap: () => _onPressed('5'), text: '5'),
              CalculatortAppElevatedButton(
                  onTap: () => _onPressed('6'), text: '6'),
              CalculatortAppElevatedButton(
                  onTap: () => _onPressed(' '), text: '-'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CalculatortAppElevatedButton(
                  onTap: () => _onPressed('1'), text: '1'),
              CalculatortAppElevatedButton(
                  onTap: () => _onPressed('2'), text: '2'),
              CalculatortAppElevatedButton(
                  onTap: () => _onPressed('3'), text: '3'),
              CalculatortAppElevatedButton(
                  onTap: () => _onPressed(' '), text: '+'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CalculatortAppElevatedButton(
                  onTap: () => _onPressed(' '), text: '+/-'),
              CalculatortAppElevatedButton(
                  onTap: () => _onPressed('0'), text: '0'),
              CalculatortAppElevatedButton(
                  onTap: () => _onPressed(','), text: ','),
              CalculatortAppElevatedButton(
                  onTap: () => _onPressed(' '), text: '='),
            ],
          ),
        ],
      ),
    );
  }
}
