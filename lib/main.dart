import 'package:currency/widgets/buttons.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: 'AC',
                  fillColor: 0xFFb2fdff,
                  textColor: 0xFF000000,
                ),
                CalculatorButton(
                  text: 'C',
                  fillColor: 0xFFb2fdff,
                  textColor: 0xFF000000,
                ),
                CalculatorButton(
                  text: '%',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF000000,
                ),
                CalculatorButton(
                  text: '/',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF000000,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: '7',
                  fillColor: 0xFF818180,
                  textColor: 0xFF000000,
                ),
                CalculatorButton(
                  text: '8',
                  fillColor: 0xFF818180,
                  textColor: 0xFF000000,
                ),
                CalculatorButton(
                  text: '9',
                  fillColor: 0xFF818180,
                  textColor: 0xFF000000,
                ),
                CalculatorButton(
                  text: '*',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF000000,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: '4',
                  fillColor: 0xFF818180,
                  textColor: 0xFF000000,
                ),
                CalculatorButton(
                  text: '5',
                  fillColor: 0xFF818180,
                  textColor: 0xFF000000,
                ),
                CalculatorButton(
                  text: '6',
                  fillColor: 0xFF818180,
                  textColor: 0xFF000000,
                ),
                CalculatorButton(
                  text: '-',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF000000,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: '1',
                  fillColor: 0xFF818180,
                  textColor: 0xFF000000,
                ),
                CalculatorButton(
                  text: '2',
                  fillColor: 0xFF818180,
                  textColor: 0xFF000000,
                ),
                CalculatorButton(
                  text: '3',
                  fillColor: 0xFF818180,
                  textColor: 0xFF000000,
                ),
                CalculatorButton(
                  text: '+',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF000000,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: '.',
                  fillColor: 0xFF818180,
                  textColor: 0xFF000000,
                ),
                CalculatorButton(
                  text: '0',
                  fillColor: 0xFF818180,
                  textColor: 0xFF000000,
                ),
                CalculatorButton(
                  text: '00',
                  fillColor: 0xFF818180,
                  textColor: 0xFF000000,
                ),
                CalculatorButton(
                  text: '=',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF000000,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
