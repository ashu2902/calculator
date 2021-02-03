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
         
        debugShowCheckedModeBanner: false);
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

  void backspace(String text) {
    setState(() {
      if (text == 'backspace') {
        _expression = _expression.substring(0, _expression.length - 1);
      }
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
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black87,
        shadowColor: Colors.grey,
        elevation: 10,
        title: Text(
          'Calculator',
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
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
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    width: _width - 80,
                    color: Colors.transparent,
                    height: _height / 5,
                    child: Text(
                      _expression,
                      style: TextStyle(color: Colors.white, fontSize: 50),
                    ),
                    alignment: Alignment.centerRight,
                  ),
                ),
                Backspace(
                  callback: backspace,
                  text: 'backspace',
                )
              ],
            ),
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
                  fontSize: 36,
                  callback: clear,
                ),
                CalculatorButton(
                  text: '%',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF000000,
                  callback: numClick,
                  fontSize: 36,
                ),
                CalculatorButton(
                  text: '/',
                  fillColor: 0xFFFFFFFF,
                  callback: numClick,
                  textColor: 0xFF000000,
                  fontSize: 36,
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
                  fontSize: 36,
                ),
                CalculatorButton(
                  text: '8',
                  fillColor: 0xFF818180,
                  textColor: 0xFF000000,
                  callback: numClick,
                  fontSize: 36,
                ),
                CalculatorButton(
                  text: '9',
                  fillColor: 0xFF818180,
                  callback: numClick,
                  textColor: 0xFF000000,
                  fontSize: 36,
                ),
                CalculatorButton(
                  text: '*',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF000000,
                  callback: numClick,
                  fontSize: 36,
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
                  fontSize: 36,
                  callback: numClick,
                ),
                CalculatorButton(
                  text: '5',
                  fillColor: 0xFF818180,
                  textColor: 0xFF000000,
                  callback: numClick,
                  fontSize: 36,
                ),
                CalculatorButton(
                  text: '6',
                  fillColor: 0xFF818180,
                  callback: numClick,
                  textColor: 0xFF000000,
                  fontSize: 36,
                ),
                CalculatorButton(
                  text: '-',
                  fillColor: 0xFFFFFFFF,
                  callback: numClick,
                  textColor: 0xFF000000,
                  fontSize: 36,
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
                  fontSize: 36,
                  callback: numClick,
                ),
                CalculatorButton(
                  text: '2',
                  fillColor: 0xFF818180,
                  textColor: 0xFF000000,
                  fontSize: 36,
                  callback: numClick,
                ),
                CalculatorButton(
                  text: '3',
                  fillColor: 0xFF818180,
                  textColor: 0xFF000000,
                  fontSize: 38,
                  callback: numClick,
                ),
                CalculatorButton(
                  text: '+',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF000000,
                  fontSize: 36,
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
                  fontSize: 36,
                  callback: numClick,
                ),
                CalculatorButton(
                  text: '0',
                  fillColor: 0xFF818180,
                  fontSize: 36,
                  textColor: 0xFF000000,
                  callback: numClick,
                ),
                CalculatorButton(
                  text: '00',
                  fillColor: 0xFF818180,
                  textColor: 0xFF000000,
                  callback: numClick,
                  fontSize: 38,
                ),
                CalculatorButton(
                  text: '=',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF000000,
                  callback: evaluate,
                  fontSize: 36,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Backspace extends StatelessWidget {
  final Icon icon;
  final Function callback;
  final String text;

  const Backspace({Key key, this.icon, this.text, this.callback})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      alignment: Alignment.bottomRight,
      child: IconButton(
          icon: Icon(
            Icons.backspace,
            size: 40,
            color: Colors.white,
          ),
          onPressed: () {
            callback(text);
          }),
    );
  }
}
