import 'package:currency/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

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
      home: CalculatorApp(),
    );
  }
}

class CalculatorApp extends StatefulWidget {
  @override
  _CalculatorAppState createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  String _history = '';
  String _expression = '';

  void numClick(String text) {
    setState(() {
      _expression += text;
    });
  }

  void allClear(String text) {
    setState(() {
      _history = '';

      _expression = '';
    });
  }

  void clear(String text) {
    setState(() {
      _expression = '';
    });
  }

  void evaluate(String text) {
    Parser p = Parser();
    Expression exp = p.parse(_expression);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);

    setState(() {
      _history = _expression;
      _expression = eval.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Container(
                height: _height / 16,
                child: Text(
                  _history,
                  style: TextStyle(color: Colors.grey, fontSize: 24),
                ),
                alignment: Alignment(1, 1),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: _height / 5,
                child: Text(
                  _expression,
                  style: TextStyle(color: Colors.white, fontSize: 50),
                ),
                alignment: Alignment(1, 1),
              ),
            ),
            // SizedBox(
            //   height: _height / 20,
            //   child: Container(
            //     color: Colors.transparent,
            //   ),
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: 'AC',
                  fillColor: 0xFFb2fdff,
                  textColor: 0xFF000000,
                  callback: allClear,
                  fontSize: 34,
                ),
                CalculatorButton(
                  text: 'C',
                  fillColor: 0xFFb2fdff,
                  textColor: 0xFF000000,
                  fontSize: 46,
                  callback: clear,
                ),
                CalculatorButton(
                  text: '%',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF000000,
                  callback: numClick,
                  fontSize: 46,
                ),
                CalculatorButton(
                  text: '/',
                  fillColor: 0xFFFFFFFF,
                  callback: numClick,
                  textColor: 0xFF000000,
                  fontSize: 46,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: '7',
                  fillColor: 0xFF818180,
                  callback: numClick,
                  textColor: 0xFF000000,
                  fontSize: 46,
                ),
                CalculatorButton(
                  text: '8',
                  fillColor: 0xFF818180,
                  textColor: 0xFF000000,
                  callback: numClick,
                  fontSize: 46,
                ),
                CalculatorButton(
                  text: '9',
                  fillColor: 0xFF818180,
                  callback: numClick,
                  textColor: 0xFF000000,
                  fontSize: 46,
                ),
                CalculatorButton(
                  text: '*',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF000000,
                  callback: numClick,
                  fontSize: 46,
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
                  fontSize: 46,
                  callback: numClick,
                ),
                CalculatorButton(
                  text: '5',
                  fillColor: 0xFF818180,
                  textColor: 0xFF000000,
                  callback: numClick,
                  fontSize: 46,
                ),
                CalculatorButton(
                  text: '6',
                  fillColor: 0xFF818180,
                  callback: numClick,
                  textColor: 0xFF000000,
                  fontSize: 46,
                ),
                CalculatorButton(
                  text: '-',
                  fillColor: 0xFFFFFFFF,
                  callback: numClick,
                  textColor: 0xFF000000,
                  fontSize: 46,
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
                  fontSize: 46,
                  callback: numClick,
                ),
                CalculatorButton(
                  text: '2',
                  fillColor: 0xFF818180,
                  textColor: 0xFF000000,
                  fontSize: 46,
                  callback: numClick,
                ),
                CalculatorButton(
                  text: '3',
                  fillColor: 0xFF818180,
                  textColor: 0xFF000000,
                  fontSize: 46,
                  callback: numClick,
                ),
                CalculatorButton(
                  text: '+',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF000000,
                  fontSize: 46,
                  callback: numClick,
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
                  fontSize: 46,
                  callback: numClick,
                ),
                CalculatorButton(
                  text: '0',
                  fillColor: 0xFF818180,
                  fontSize: 46,
                  textColor: 0xFF000000,
                  callback: numClick,
                ),
                CalculatorButton(
                  text: '00',
                  fillColor: 0xFF818180,
                  textColor: 0xFF000000,
                  callback: numClick,
                  fontSize: 42,
                ),
                CalculatorButton(
                  text: '=',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF000000,
                  callback: evaluate,
                  fontSize: 46,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
