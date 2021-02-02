import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final int textColor;
  final int fillColor;
  final double fontSize;
  final Function callback;

  const CalculatorButton(
      {Key key,
      this.fillColor,
      this.text,
      this.textColor,
      this.fontSize,
      this.callback})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(8),
      child: SizedBox(
        width: _width / 5,
        height: _height / 11,
        child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(90),
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: fontSize,
            ),
          ),
          onPressed: () {
            callback(text);
          },
          color: fillColor != null ? Color(fillColor) : null,
          textColor: Color(textColor),
        ),
      ),
    );
  }
}
