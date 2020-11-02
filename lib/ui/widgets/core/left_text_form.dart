import 'package:flutter/material.dart';

class LeftTextForm extends StatelessWidget {
  final String text;

  const LeftTextForm(this.text);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
        text,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
