import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final int textColor;
  final int fillColor;

  const CalculatorButton({Key key, this.fillColor, this.text, this.textColor})
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
            style: TextStyle(fontSize: 28),
          ),
          onPressed: () {},
          color: fillColor != null ? Color(fillColor) : null,
          textColor: Color(textColor),
        ),
      ),
    );
  }
}
